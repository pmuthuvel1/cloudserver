class CreateServerInsTransactions < ActiveRecord::Migration
  def change
    create_table :server_ins_transactions do |t|
      t.integer :ser_inst_id
      t.integer :ownerid
      t.integer :masterid
      t.date :exec_date
      t.timestamp :start_time
      t.timestamp :end_time
      t.integer :hours_run
      t.float :totalbill

      t.timestamps
    end
  end
end
