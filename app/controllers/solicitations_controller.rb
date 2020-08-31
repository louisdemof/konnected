class SolicitationsController < ApplicationController
  def index
    @project = Project.find(params[:project_id])
    @solicitations = @project.solicitations
  end

  def new
    @project = Project.find(params[:project_id])
    @solicitation = Solicitation.new
  end

  def create
    @project = Project.find(params[:project_id])
    @solicitation = Solicitation.new(solicitation_params)
    @solicitation.user_id = current_user.id
    @solicitation.project_id = @project.id
    if @solicitation.save!
      redirect_to project_solicitations_path(@project), notice: "Congrats, you applied!"
    else
      render :new
    end
  end

  def validate
    @solicitation = Solicitation.find(params[:id])
    @status = params[:commit]
    if @status == "Select this dev"
     @solicitation.update!(status: "Accepted")

    end
    @project = @solicitation.project
    @solicitation.save
    @project.solicitations.each do |solicitation|
      if solicitation.status == "Pending"
        solicitation.status = "Denied"
        solicitation.save!
      end
    end
    @project.status = "assigned"
    @project.save
    redirect_to project_path(@project)

  end

  def show
    @solicitation = Solicitation.find(params[:id])
    @project = @solicitation.project
    @intermediary_update = @solicitation.intermediary_updates
    @comment = Comment.new
  end


  private

  def solicitation_params
    params.require(:solicitation).permit(:user_id, :project_id, :comment, :status, :photo)
  end
end
