class AddItemPriceToItems < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :item_price, :float
  end
end
