class AddMallToItems < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :mall, :string
  end
end
