class ProjectPagesController < ApplicationController

  def create
    @project = Project.find(params[:id])
    @project_page = ProjectPage.new(project_page_params)
    @project_page.project = @project
    @project_page.save
    redirect_to project_path(@project), notice: "The second step of your project has been created"
  end

  def destroy
    @project = Project.find(params[:project_id])
    @project_page = ProjectPage.find(params[:id])
    @project_page.destroy
    render "projects/show"
  end

  private

  def project_page_params
    params.require(:project_page).permit(:project_id, :page_id)
  end
end
