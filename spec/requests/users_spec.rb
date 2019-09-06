require 'rails_helper'

RSpec.describe 'User API', type: :request do
  let!(:user){ create :user }
  let(:user_id) { users.first.id }

  describe "Post/signup" do
    let(:valid_attributes) { { firstname: 'Ochowo', lastname: 'Haruna', username: 'ooche', email: 'ochowoharuna@gmail.com', password: 'ikongbeh' } }

    context 'when the request is valid' do
      before { post "/auth/signup", params: valid_attributes }
      it 'returns status code 201' do
        expect(response).to have_http_status :created
      end
     
    end
  end

  # describe "Post/login" do
  #   let(:valid_attributes) { {email: 'ochowoharuna@gmail.com', password: 'ikongbeh' } }

  #   # context 'when the request is valid' do
  #   #   before { post '/auth/login', params: valid_attributes }

  #   #   # it 'creates a user' do
  #   #   #   expect(json['email']).to eq('ochowoharuna@gmail.com')
  #   #   # end
  #   #   # it 'returns status code 200' do
  #   #   #   expect(response).to have_http_status(200)
  #   #   # end
  #   # end
  # end
end