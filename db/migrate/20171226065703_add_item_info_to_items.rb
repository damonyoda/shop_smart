class AddItemInfoToItems < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :item_info, :string
  end
end
