class CreateCredentials < ActiveRecord::Migration
  def change
    create_table :credentials do |t|
      t.string :username
      t.string :password
      t.date :expiration

      t.timestamps null: false
    end
  end
end
