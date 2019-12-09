class AddMallContactToMalls < ActiveRecord::Migration[5.1]
  def change
    add_column :malls, :mall_contact, :string
  end
end
