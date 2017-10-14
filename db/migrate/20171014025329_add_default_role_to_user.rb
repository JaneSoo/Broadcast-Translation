class AddDefaultRoleToUser < ActiveRecord::Migration[5.1]
  def up
    change_column :users, :role, :string, default: "Admin"
  end

  def down
    change_column :users, :role, :string, default: nil
  end

end
