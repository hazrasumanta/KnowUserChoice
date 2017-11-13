class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :password_digest
      t.datetime :last_sign_in_at

      t.timestamps
    end
  end
end
