require 'spec_helper'

describe "master_servers/index" do
  before(:each) do
    assign(:master_servers, [
      stub_model(MasterServer,
        :servername => "Servername",
        :serversize => "Serversize",
        :server_region => "Server Region",
        :ind_resource => "Ind Resource",
        :ind_hour => 1.5,
        :org_res => "Org Res",
        :org_hour => 1.5,
        :group_res => "Group Res",
        :group_hour => 1
      ),
      stub_model(MasterServer,
        :servername => "Servername",
        :serversize => "Serversize",
        :server_region => "Server Region",
        :ind_resource => "Ind Resource",
        :ind_hour => 1.5,
        :org_res => "Org Res",
        :org_hour => 1.5,
        :group_res => "Group Res",
        :group_hour => 1
      )
    ])
  end

  it "renders a list of master_servers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Servername".to_s, :count => 2
    assert_select "tr>td", :text => "Serversize".to_s, :count => 2
    assert_select "tr>td", :text => "Server Region".to_s, :count => 2
    assert_select "tr>td", :text => "Ind Resource".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Org Res".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Group Res".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
