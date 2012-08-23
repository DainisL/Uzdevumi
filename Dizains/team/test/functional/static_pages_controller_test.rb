require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get first_page" do
    get :first_page
    assert_response :success
  end

end
