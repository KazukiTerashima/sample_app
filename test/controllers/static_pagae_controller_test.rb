require 'test_helper'

class StaticPagaeControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get static_pagae_home_url
    assert_response :success
  end

  test "should get help" do
    get static_pagae_help_url
    assert_response :success
  end

end
