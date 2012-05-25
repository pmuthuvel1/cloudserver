require 'spec_helper'

describe "logins/index" do
  before(:each) do
    assign(:logins, [
      stub_model(Login,
        :username => "Username",
        :pass_word => "Pass Word",
        :name => "Name",
        :usertype => "Usertype",
        :email => "Email",
        :phone => 1
      ),
      stub_model(Login,
        :username => "Username",
        :pass_word => "Pass Word",
        :name => "Name",
        :usertype => "Usertype",
        :email => "Email",
        :phone => 1
      )
    ])
  end

  it "renders a list of logins" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Username".to_s, :count => 2
    assert_select "tr>td", :text => "Pass Word".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Usertype".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
