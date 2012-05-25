require 'spec_helper'

describe "master_servers/edit" do
  before(:each) do
    @master_server = assign(:master_server, stub_model(MasterServer,
      :servername => "MyString",
      :serversize => "MyString",
      :server_region => "MyString",
      :ind_resource => "MyString",
      :ind_hour => 1.5,
      :org_res => "MyString",
      :org_hour => 1.5,
      :group_res => "MyString",
      :group_hour => 1
    ))
  end

  it "renders the edit master_server form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => master_servers_path(@master_server), :method => "post" do
      assert_select "input#master_server_servername", :name => "master_server[servername]"
      assert_select "input#master_server_serversize", :name => "master_server[serversize]"
      assert_select "input#master_server_server_region", :name => "master_server[server_region]"
      assert_select "input#master_server_ind_resource", :name => "master_server[ind_resource]"
      assert_select "input#master_server_ind_hour", :name => "master_server[ind_hour]"
      assert_select "input#master_server_org_res", :name => "master_server[org_res]"
      assert_select "input#master_server_org_hour", :name => "master_server[org_hour]"
      assert_select "input#master_server_group_res", :name => "master_server[group_res]"
      assert_select "input#master_server_group_hour", :name => "master_server[group_hour]"
    end
  end
end
