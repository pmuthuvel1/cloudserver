require 'spec_helper'

describe "server_ins_transactions/show" do
  before(:each) do
    @server_ins_transaction = assign(:server_ins_transaction, stub_model(ServerInsTransaction,
      :ser_inst_id => 1,
      :ownerid => 2,
      :masterid => 3,
      :hours_run => 4,
      :totalbill => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(/1.5/)
  end
end
