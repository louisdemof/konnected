class ChangeStatusToSolicitation < ActiveRecord::Migration[6.0]
  def change
    change_column :solicitations, :status, :string, default: "Pending"
  end
end
