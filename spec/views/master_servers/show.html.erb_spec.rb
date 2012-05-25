require 'spec_helper'

describe "master_servers/show" do
  before(:each) do
    @master_server = assign(:master_server, stub_model(MasterServer,
      :servername => "Servername",
      :serversize => "Serversize",
      :server_region => "Server Region",
      :ind_resource => "Ind Resource",
      :ind_hour => 1.5,
      :org_res => "Org Res",
      :org_hour => 1.5,
      :group_res => "Group Res",
      :group_hour => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Servername/)
    rendered.should match(/Serversize/)
    rendered.should match(/Server Region/)
    rendered.should match(/Ind Resource/)
    rendered.should match(/1.5/)
    rendered.should match(/Org Res/)
    rendered.should match(/1.5/)
    rendered.should match(/Group Res/)
    rendered.should match(/1/)
  end
end
