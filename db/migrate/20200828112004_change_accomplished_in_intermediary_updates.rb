class ChangeAccomplishedInIntermediaryUpdates < ActiveRecord::Migration[6.0]
  def change
    change_column :intermediary_updates, :accomplished, :boolean
  end
end
