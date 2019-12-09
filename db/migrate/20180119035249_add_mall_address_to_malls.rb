class AddMallAddressToMalls < ActiveRecord::Migration[5.1]
  def change
    add_column :malls, :mall_address, :string
  end
end
