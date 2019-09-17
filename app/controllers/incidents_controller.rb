class IncidentsController < ApplicationController
  before_action :set_incident, only: [:show, :update, :destroy]

  def create
    @incident = current_user.incidents.create!(incident_params)
    json_response(@incident, :created)
  end

  def index
    @incidents = current_user.incidents
    json_response(@incidents, :ok)
  end
  private

  def incident_params
    params.permit(:incident_type, :created_by, :location, :comment, :images, :status)
  end

  # def set_incident
  #   @incident = Incident.find(params[:id])
  # end
end
