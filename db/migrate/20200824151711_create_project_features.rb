class CreateProjectFeatures < ActiveRecord::Migration[6.0]
  def change
    create_table :project_features do |t|
      t.references :project
      t.references :page
      t.timestamps
    end
  end
end
