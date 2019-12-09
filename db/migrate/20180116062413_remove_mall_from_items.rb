class RemoveMallFromItems < ActiveRecord::Migration[5.1]
  def change
    remove_column :items, :mall, :string
  end
end
