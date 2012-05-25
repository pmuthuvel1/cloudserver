require 'spec_helper'

describe "logins/new" do
  before(:each) do
    assign(:login, stub_model(Login,
      :username => "MyString",
      :pass_word => "MyString",
      :name => "MyString",
      :usertype => "MyString",
      :email => "MyString",
      :phone => 1
    ).as_new_record)
  end

  it "renders new login form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => logins_path, :method => "post" do
      assert_select "input#login_username", :name => "login[username]"
      assert_select "input#login_pass_word", :name => "login[pass_word]"
      assert_select "input#login_name", :name => "login[name]"
      assert_select "input#login_usertype", :name => "login[usertype]"
      assert_select "input#login_email", :name => "login[email]"
      assert_select "input#login_phone", :name => "login[phone]"
    end
  end
end
