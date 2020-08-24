class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :status
      t.references :user, null: false, foreign_key: true
      t.references :level, null: false, foreign_key: true
      t.date :deadline

      t.timestamps
    end
  end
end
