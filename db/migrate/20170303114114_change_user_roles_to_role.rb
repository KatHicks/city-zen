class ChangeUserRolesToRole < ActiveRecord::Migration[5.0]
  def change
    rename_column :users, :roles, :role
  end
end
