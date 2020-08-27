class AddReferenceToIntermediaryUpdates < ActiveRecord::Migration[6.0]
  def change
    add_reference :intermediary_updates, :solicitation, null: false, foreign_key: true
  end
end
