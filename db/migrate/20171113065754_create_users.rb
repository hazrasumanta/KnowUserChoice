class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.digest :passworld
      t.datetime :last_sign_in_at

      t.timestamps
    end
  end
end
