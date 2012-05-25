require 'spec_helper'

describe "server_ins_transactions/edit" do
  before(:each) do
    @server_ins_transaction = assign(:server_ins_transaction, stub_model(ServerInsTransaction,
      :ser_inst_id => 1,
      :ownerid => 1,
      :masterid => 1,
      :hours_run => 1,
      :totalbill => 1.5
    ))
  end

  it "renders the edit server_ins_transaction form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => server_ins_transactions_path(@server_ins_transaction), :method => "post" do
      assert_select "input#server_ins_transaction_ser_inst_id", :name => "server_ins_transaction[ser_inst_id]"
      assert_select "input#server_ins_transaction_ownerid", :name => "server_ins_transaction[ownerid]"
      assert_select "input#server_ins_transaction_masterid", :name => "server_ins_transaction[masterid]"
      assert_select "input#server_ins_transaction_hours_run", :name => "server_ins_transaction[hours_run]"
      assert_select "input#server_ins_transaction_totalbill", :name => "server_ins_transaction[totalbill]"
    end
  end
end
