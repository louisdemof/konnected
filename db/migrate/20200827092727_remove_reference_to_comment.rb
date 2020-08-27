class RemoveReferenceToComment < ActiveRecord::Migration[6.0]
  def change
    remove_reference :comments, :solicitation, foreign_key: true
    add_reference :comments, :intermediary_update, foreign_key: true
  end
end
