class CreatePasswordRequests < ActiveRecord::Migration
  def change
    create_table :password_requests do |t|
      t.string :email
      t.references :credential, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
