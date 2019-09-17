require 'rails_helper'

RSpec.describe Incident, type: :model do
  # Validation tests
  it { should validate_presence_of(:incident_type) }
  it { should validate_presence_of(:created_by) }
  it { should validate_presence_of(:location) }
  it { should validate_presence_of(:comment) }
end
