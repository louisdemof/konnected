class ProjectsController < ApplicationController

  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
    @pages = Page.all
    @features = Feature.all
    @solicitation = @project.solicitations.find_by(status: "Accepted")
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    @project.user = current_user
    @project.project_level
    @project.save!
    redirect_to project_path(@project), notice: "The first step of your project has been created"
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    @project.update(params[:project])
  end

  def confirm_project
    @project = Project.find(params[:id])
    @solicitation = @project.solicitations.find_by(status: "Accepted")
    @project.status = "confirmed"
    if @project.save
      redirect_to project_path(@project)
    else
      root_path
    end

  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    @project.update(project_params)
    @project.price_cents = @project.total_price
    @project.save
    redirect_to project_path(@project)
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to root_path
  end

  private

  def project_params
    params.require(:project).permit(:name, :status, :deadline, :description, :user_id, :level_id, page_ids: [], feature_ids: [], attachments: [], photos: [])
  end
end
