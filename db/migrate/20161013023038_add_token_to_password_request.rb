class AddTokenToPasswordRequest < ActiveRecord::Migration
  def change
    add_column :password_requests, :token, :string
  end
end
