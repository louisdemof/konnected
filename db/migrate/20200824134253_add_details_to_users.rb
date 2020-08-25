class AddDetailsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :address, :text
    add_column :users, :phone_number, :integer
    add_column :users, :student, :boolean
    add_column :users, :availability, :text
  end
end
