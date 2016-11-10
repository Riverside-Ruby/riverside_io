class AddEncryptedColumnsToCredentials < ActiveRecord::Migration
  def change
    add_column :credentials, :encrypted_password, :string
    add_column :credentials, :encrypted_password_iv, :string
    remove_column :credentials, :password, :string
  end
end
