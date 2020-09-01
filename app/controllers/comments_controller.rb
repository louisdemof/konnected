class CommentsController < ApplicationController

  def create
    @intermediary_update = IntermediaryUpdate.find(params[:intermediary_update_id])
    @comment = Comment.new(comment_params)
    @comment.intermediary_update = @intermediary_update
    @solicitation = @intermediary_update.solicitation
    @comment.user = current_user
    if @comment.save!
      IntermediaryUpdateChannel.broadcast_to(
      @intermediary_update, 
      render_to_string(partial: "comment", locals: { comment: @comment})
      )
      redirect_to solicitation_path(@solicitation, anchor: "comment-#{@comment.id}")
    else
      render "solicitation/show"
    end
  end



  private 

  def comment_params
    params.require(:comment).permit(:content)
  end
end
