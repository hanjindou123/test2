class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_loginname
      t.string :user_password
      t.string :user_relatecount
      t.string :user_email
      t.string :user_realname
      t.text :user_address
      t.string :user_phonenumber
      t.boolean :user_payable

      t.timestamps
    end
  end
end
