class IntermediaryUpdateChannel < ApplicationCable::Channel
  def subscribed
    intermediary_update = IntermediaryUpdate.find(params[:id])
    stream_for intermediary_update
  end
end
