class RemoveAmountInOrders < ActiveRecord::Migration[6.0]
  def change
    remove_column :orders, :amount_cents
    remove_column :orders, :amount_currency
  end
end
