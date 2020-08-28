class AddLinkedinProfileToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :linkedin_profile, :string
    add_column :users, :website_1, :string
    add_column :users, :website_2, :string
    add_column :users, :website_3, :string
  end
end
