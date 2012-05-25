require 'spec_helper'

describe "users/index" do
  before(:each) do
    assign(:users, [
      stub_model(User,
        :username => "Username",
        :pass_word => "Pass Word",
        :usertype => "Usertype"
      ),
      stub_model(User,
        :username => "Username",
        :pass_word => "Pass Word",
        :usertype => "Usertype"
      )
    ])
  end

  it "renders a list of users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Username".to_s, :count => 2
    assert_select "tr>td", :text => "Pass Word".to_s, :count => 2
    assert_select "tr>td", :text => "Usertype".to_s, :count => 2
  end
end
