class CreateMasterServers < ActiveRecord::Migration
  def change
    create_table :master_servers do |t|
      t.string :servername
      t.string :serversize
      t.string :server_region
      t.string :ind_resource
      t.float :ind_hour
      t.string :org_res
      t.float :org_hour
      t.string :group_res
      t.integer :group_hour

      t.timestamps
    end
  end
end
