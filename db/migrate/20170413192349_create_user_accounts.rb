class CreateUserAccounts < ActiveRecord::Migration
  def change
    create_table :user_accounts do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password
    end
  end
end
