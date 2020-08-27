class AddPriceToPages < ActiveRecord::Migration[6.0]
  def change
    add_monetize :pages, :amount, currency: { present: false }
  end
end
