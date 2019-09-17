require 'rails_helper'

RSpec.describe 'Incidents API', type: :request do

  let(:user) { create(:user) }
  # Initialise test data
  let!(:incidents) { create_list(:incident, 10, created_by: user.id) }
  let(:incident_id) { incidents.first.id }

    # authorize request
    let(:headers) { valid_headers }

  # Post Record
  describe 'POST/incidents' do
    let (:valid_attributes) do
      { incident_type: 'redflag', location: 'Lagos', comment: 'Bribery', status: 'new', created_by: user.id.to_s }.to_json
    end
    context 'when the request is valid' do
      before { post '/api/incidents', params: valid_attributes, headers: headers }
      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end

    context 'when the request is invalid' do
      before { post '/api/incidents', params: {}, headers: headers }

      it 'returns status code 422' do
        expect(response).to have_http_status(422)
      end

      it 'returns a validation failure message' do
        expect(response.body)
          .to match(/Incident type can't be blank, Location can't be blank, Comment can't be blank/)
      end

    end
  end

    # Test suite for GET /incidents
    describe 'GET /incidents' do
      # make HTTP get request before each example
      before { get '/api/incidents', headers: headers }
  
      it 'returns incidents' do
        # Note `json` is a custom helper to parse JSON responses
        expect(json).not_to be_empty
        expect(json.size).to eq(10)
      end
  
      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

end