class SolicitationsController < ApplicationController
  def index
    @solicitations = Solicitation.all
  end

  def new 
    @solicitation = Solicitation.new
    @project = Project.find(params[:project_id])
  end

  def create
    @project = Project.find(params[:project_id])
    @solicitation = Solicitation.new(solicitation_params)
    @solicitation.user_id = current_user.id
    @solicitation.project_id = @project.id
    if @solicitation.save!
      redirect_to solicitations_path, notice: "Congrats, you applied!"
    else 
      render :new
    end
  end

  def show
    @solicitation = Solicitation.find(params[:id])
    @project = @solicitation.project
    @intermediary_update = @solicitation.intermediary_updates
    @comment = Comment.new
  end

  private

  def solicitation_params
    params.require(:solicitation).permit(:user_id, :project_id, :comment)
  end
end
