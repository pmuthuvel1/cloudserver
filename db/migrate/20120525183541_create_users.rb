class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :pass_word
      t.string :usertype

      t.timestamps
    end
  end
end
