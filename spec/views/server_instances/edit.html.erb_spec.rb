require 'spec_helper'

describe "server_instances/edit" do
  before(:each) do
    @server_instance = assign(:server_instance, stub_model(ServerInstance,
      :ownerid => 1,
      :masterid => 1,
      :status => "MyString",
      :recentbill => 1.5,
      :totalbill => 1.5
    ))
  end

  it "renders the edit server_instance form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => server_instances_path(@server_instance), :method => "post" do
      assert_select "input#server_instance_ownerid", :name => "server_instance[ownerid]"
      assert_select "input#server_instance_masterid", :name => "server_instance[masterid]"
      assert_select "input#server_instance_status", :name => "server_instance[status]"
      assert_select "input#server_instance_recentbill", :name => "server_instance[recentbill]"
      assert_select "input#server_instance_totalbill", :name => "server_instance[totalbill]"
    end
  end
end
