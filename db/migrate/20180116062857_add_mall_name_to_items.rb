class AddMallNameToItems < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :mall_name, :string
  end
end
