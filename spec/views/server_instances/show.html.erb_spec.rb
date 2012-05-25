require 'spec_helper'

describe "server_instances/show" do
  before(:each) do
    @server_instance = assign(:server_instance, stub_model(ServerInstance,
      :ownerid => 1,
      :masterid => 2,
      :status => "Status",
      :recentbill => 1.5,
      :totalbill => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Status/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
  end
end
