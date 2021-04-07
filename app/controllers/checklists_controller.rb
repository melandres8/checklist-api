class ChecklistsController < ApplicationController
  before_action :set_checklist, only: [:show, :update, :destroy]

  def index
    @checklists = Checklist.all
    json_response(@checklists)
  end

  def create
    @checklist = Checklist.create!(checklist_params)
    json_response(@checklist, :created)
  end

  def show
    json_response(@checklist)
  end

  def update
    @checklist.update(checklist_params)
    head :no_content
  end

  def destroy
    @checklist.destroy
    head :no_content
  end

  private

  def checklist_params
    params.permit(:name, :created_by)
  end

  def set_checklist
    @checklist = Checklist.find(params[:id])
  end
end
