class AddMallNameToMalls < ActiveRecord::Migration[5.1]
  def change
    add_column :malls, :mall_name, :string
  end
end
