class ServerInsTransaction < ActiveRecord::Base
  attr_accessible :end_time, :exec_date, :hours_run, :masterid, :ownerid, :ser_inst_id, :start_time, :totalbill
end
