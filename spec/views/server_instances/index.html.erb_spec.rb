require 'spec_helper'

describe "server_instances/index" do
  before(:each) do
    assign(:server_instances, [
      stub_model(ServerInstance,
        :ownerid => 1,
        :masterid => 2,
        :status => "Status",
        :recentbill => 1.5,
        :totalbill => 1.5
      ),
      stub_model(ServerInstance,
        :ownerid => 1,
        :masterid => 2,
        :status => "Status",
        :recentbill => 1.5,
        :totalbill => 1.5
      )
    ])
  end

  it "renders a list of server_instances" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
