class RenameUsersTableToManagersTable < ActiveRecord::Migration[6.0]
  def change
    rename_table :users, :managers
  end
end
