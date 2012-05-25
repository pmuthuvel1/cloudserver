class CreateServerInstances < ActiveRecord::Migration
  def change
    create_table :server_instances do |t|
      t.integer :ownerid
      t.integer :masterid
      t.timestamp :start_time
      t.timestamp :end_time
      t.string :status
      t.float :recentbill
      t.date :recent_exe_date
      t.float :totalbill

      t.timestamps
    end
  end
end
