require 'test_helper'

class ListsControllerTest < ActionController::TestCase
  test "should get area" do
    get :area
    assert_response :success
  end

  test "should get job_type" do
    get :job_type
    assert_response :success
  end

end
