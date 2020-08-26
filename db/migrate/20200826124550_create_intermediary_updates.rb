class CreateIntermediaryUpdates < ActiveRecord::Migration[6.0]
  def change
    create_table :intermediary_updates do |t|
      t.string :description
      t.string :url

      t.timestamps
    end
  end
end
