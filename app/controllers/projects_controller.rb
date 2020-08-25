class ProjectsController < ApplicationController

  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    @project.user = current_user
    @project.project_level
    @project.save
    redirect_to project_path(@project), notice: "The first step of your project has been created"
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    @project.update(project_params)
    redirect_to project_path(@project)
  end

  private

  def project_params
    params.require(:project).permit(:name, :status, :deadline, :description, :user_id, :level_id, page_ids: [], feature_ids: [])
  end
end
