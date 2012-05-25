require 'spec_helper'

describe "logins/show" do
  before(:each) do
    @login = assign(:login, stub_model(Login,
      :username => "Username",
      :pass_word => "Pass Word",
      :name => "Name",
      :usertype => "Usertype",
      :email => "Email",
      :phone => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Username/)
    rendered.should match(/Pass Word/)
    rendered.should match(/Name/)
    rendered.should match(/Usertype/)
    rendered.should match(/Email/)
    rendered.should match(/1/)
  end
end
