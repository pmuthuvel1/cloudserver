class ServerInstance < ActiveRecord::Base
  attr_accessible :end_time, :masterid, :ownerid, :recent_exe_date, :recentbill, :start_time, :status, :totalbill
  belongs_to :master_server
  belongs_to :logins
  has_many :server_ins_transactions
  #validates :end_time, :masterid, :ownerid, :recent_exe_date, :recentbill, :start_time, :status, :totalbill

end
