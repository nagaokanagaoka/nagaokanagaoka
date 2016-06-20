require 'test_helper'

class ListsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get lists" do
    get :lists
    assert_response :success
  end

end