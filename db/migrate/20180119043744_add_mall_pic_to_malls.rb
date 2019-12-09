class AddMallPicToMalls < ActiveRecord::Migration[5.1]
  #rails will auto upload the picture of the malls to uploads/ follow by the name of column :malls it will automatically create a folder of the column name 
  def change
    add_column :malls, :picture, :string
  end
end
