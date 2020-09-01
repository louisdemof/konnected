class ChangeColumnToNotifications < ActiveRecord::Migration[6.0]
  def change
    remove_column :notifications, :read_at
    add_column :notifications, :read, :boolean, default: false
  end
end
