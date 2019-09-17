class Incident < ApplicationRecord
    validates_presence_of :incident_type, :location, :created_by, :comment, :status
end
