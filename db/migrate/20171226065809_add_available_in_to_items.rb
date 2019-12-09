class AddAvailableInToItems < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :available_in, :string
  end
end
