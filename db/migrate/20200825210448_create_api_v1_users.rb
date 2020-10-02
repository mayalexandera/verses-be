class CreateApiV1Users < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :plan_membership_id
      t.string :email
      t.string :password_digest
      t.string :session_token
      t.index :session_token, unique: true
      t.index :email, unique: true


      t.timestamps
    end
  end
end
