class IntermediaryUpdatesController < ApplicationController

  def index
    @intermediary_updates = IntermediaryUpdate.all
  end

  def new
    @intermediary_update = IntermediaryUpdate.new
    @project = Project.find(params[:project_id])
    @solicitation = Solicitation.find(params[:solicitation_id])
  end

  def create
    @project = Project.find(params[:project_id])
    @solicitation = Solicitation.find(params[:solicitation_id])
    @intermediary_update = IntermediaryUpdate.new(params_intermediary_updates)
    @intermediary_update.solicitation = @solicitation
    if @intermediary_update.save!
      redirect_to solicitation_path(@solicitation), notice: "Congrats, you added an update on this project!"
    else 
      render :new
    end
  end

  private

  def params_intermediary_updates
    params.require(:intermediary_update).permit(:description, :url, :accomplished, documents: [])
  end
end
