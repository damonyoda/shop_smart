class AddItemNameToItems < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :item_name, :string
  end
end
