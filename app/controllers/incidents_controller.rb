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

  def show
    json_response(@incident, :ok)
  end

  def update
    @incident.update(incident_params)
    json_response(@incidents, :ok)
  end

  def destroy
    @incident.destroy
    head :no_content
  end
  private

  def incident_params
    params.permit(:incident_type, :created_by, :location, :comment, :images, :status)
  end

  def set_incident
    @incident = current_user.incidents.find(params[:id])
  end

end
