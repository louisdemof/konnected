class CreateSolicitations < ActiveRecord::Migration[6.0]
  def change
    create_table :solicitations do |t|
      t.string :status
      t.references :user
      t.references :project
      t.timestamps
    end
  end
end
