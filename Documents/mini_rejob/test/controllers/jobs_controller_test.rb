require 'test_helper'

class JobsControllerTest < ActionController::TestCase
  test "should get job" do
    get :job
    assert_response :success
  end

end
