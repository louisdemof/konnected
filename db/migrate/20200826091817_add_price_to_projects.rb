class AddPriceToProjects < ActiveRecord::Migration[6.0]
  def change
    add_monetize :projects, :price, currency: { present: false }
  end
end
