class AddFinishedToIntermediaryUpdates < ActiveRecord::Migration[6.0]
  def change
    add_column :intermediary_updates, :accomplished, :boolean, default: false
  end
end
