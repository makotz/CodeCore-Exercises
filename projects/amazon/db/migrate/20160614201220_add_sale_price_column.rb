class AddSalePriceColumn < ActiveRecord::Migration
  def change
    add_column :products, :sale_price, :decimal
  end
end
