class MasterServer < ActiveRecord::Base
  attr_accessible :group_hour, :group_res, :ind_hour, :ind_resource, :org_hour, :org_res, :server_region, :servername, :serversize
  has_many :server_instances
end
