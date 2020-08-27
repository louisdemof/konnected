class AddPriceToFeatures < ActiveRecord::Migration[6.0]
  def change
    add_monetize :features, :amount, currency: { present: false }
  end
end
