class AddReferenceToUsers < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :level, foreign_key: true
  end
end
