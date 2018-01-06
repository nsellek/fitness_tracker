class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :gender
      t.integer :height
      t.integer :weight
      t.references :account, foreign_key: true

      t.timestamps
    end
  end
end
