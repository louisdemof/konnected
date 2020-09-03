class ProjectFeaturesController < ApplicationController
  def create
    @project = Project.find(params[:id])
    @project_feature = ProjectFeature.new(project_feature_params)
    @project_feature.project = @project
    @project_feature.save
    redirect_to project_path(@project), notice: "The third step of your project has been created"
  end

  def destroy
    @project = Project.find(params[:project_id])
    @project_feature = ProjectFeature.find(params[:id])
    @project_feature.destroy
    render "projects/show"
  end

  private

  def project_feature_params
    params.require(:project_feature).permit(:project_id, :feature_id)
  end
end
