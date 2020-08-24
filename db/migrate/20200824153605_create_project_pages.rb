class CreateProjectPages < ActiveRecord::Migration[6.0]
  def change
    create_table :project_pages do |t|
      t.references :project
      t.references :page

      t.timestamps
    end
  end
end
