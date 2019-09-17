class Incident < ApplicationRecord
    validates_presence_of :incident_type, :location, :created_by, :comment, :status
    validates_acceptance_of :incident_type, :accept => ['redflag', 'intervention']
end
