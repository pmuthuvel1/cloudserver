class CreateLogins < ActiveRecord::Migration
  def change
    create_table :logins do |t|
      t.string :username
      t.string :pass_word
      t.string :name
      t.string :usertype
      t.string :email
      t.integer :phone

      t.timestamps
    end
  end
end
