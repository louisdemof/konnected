class AddColumnToFeatures < ActiveRecord::Migration[6.0]
  def change
    add_column :features, :difficulty, :integer
  end
end
