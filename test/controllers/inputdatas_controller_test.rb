require 'test_helper'

class InputdatasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get inputdatas_index_url
    assert_response :success
  end

  test "should get new" do
    get inputdatas_new_url
    assert_response :success
  end

  test "should get create" do
    get inputdatas_create_url
    assert_response :success
  end

  test "should get destroy" do
    get inputdatas_destroy_url
    assert_response :success
  end

end
