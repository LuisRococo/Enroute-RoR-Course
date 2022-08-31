class EditComputerColumns < ActiveRecord::Migration[6.1]
  def up
    rename_column :computers, :storage, :storage_device
    change_column :computers, :name_of_user, :string, null: false
    change_column :computers, :storage_device, :string, limit: 5
  end

  def down
    rename_column :computers, :storage_device, :storage
    change_column :computers, :name_of_user, :string, null: true
    change_column :computers, :storage, :string, limit: 255
  end
end
