class AlterTableUsersChangePasswordColumn < ActiveRecord::Migration[5.1]
  def change
    rename_column :users, :encrypted_password, :password_digest
  end
end
