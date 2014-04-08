require 'test_helper'

class PhotoControllerTest < ActionController::TestCase
  test "should get image" do
    get :image
    assert_response :success
  end

end
