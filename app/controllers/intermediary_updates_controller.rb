class IntermediaryUpdatesController < ApplicationController

  def index
    @intermediary_updates = IntermediaryUpdates.all

  end
end
