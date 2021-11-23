require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
  test "invalid signup infomation" do
    get signup_path
    assert_no_difference 'User.count' do
      post users_path, params: { user: { name: "",
                                      email: "user@invalid",
                                      password: "123",
                                      password_confirmation: "456"}}
    end
    assert_template 'users/new'    
    assert_select 'div#error_explanation'
    assert_select 'div.field_with_errors'
  end
  
  test "valid signup infomation" do
    get signup_path
    assert_difference 'User.count', 1 do
      post users_path, params: { user: { name: "test user",
                                      email: "test@user.com",
                                      password: "password",
                                      password_confirmation: "password"}}
    end
    follow_redirect!
    assert_template 'users/show'
    assert_not flash.empty?
  end
end
