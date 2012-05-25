require 'spec_helper'

describe "server_ins_transactions/index" do
  before(:each) do
    assign(:server_ins_transactions, [
      stub_model(ServerInsTransaction,
        :ser_inst_id => 1,
        :ownerid => 2,
        :masterid => 3,
        :hours_run => 4,
        :totalbill => 1.5
      ),
      stub_model(ServerInsTransaction,
        :ser_inst_id => 1,
        :ownerid => 2,
        :masterid => 3,
        :hours_run => 4,
        :totalbill => 1.5
      )
    ])
  end

  it "renders a list of server_ins_transactions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
