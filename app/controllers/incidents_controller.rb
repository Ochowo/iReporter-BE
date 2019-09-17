class IncidentsController < ApplicationController
  before_action :set_incident, only: [:show, :update, :destroy]


  def create
    @incident = current_user.incidents.create!(incident_params)
    json_response(@incident, :created)
  end

  private

  def incident_params
    params.permit(:incident_type, :created_by, :location, :comment, :images, :status)
  end
end
