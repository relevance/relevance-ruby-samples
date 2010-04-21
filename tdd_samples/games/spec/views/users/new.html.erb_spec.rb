require 'spec_helper'

describe "/users/new.html.erb" do
  include UsersHelper

  before(:each) do
    assigns[:user] = stub_model(User,
      :new_record? => true,
      :name => "value for name",
      :age => 1
    )
  end

  it "renders new user form" do
    render

    response.should have_tag("form[action=?][method=post]", users_path) do
      with_tag("input#user_name[name=?]", "user[name]")
      with_tag("input#user_age[name=?]", "user[age]")
    end
  end
end
