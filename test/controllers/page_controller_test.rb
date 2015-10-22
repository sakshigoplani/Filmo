require 'test_helper'

class PageControllerTest < ActionController::TestCase
  test "should get Home" do
    get :Home
    assert_response :success
  end

  test "should get About" do
    get :About
    assert_response :success
  end

  test "should get Suggest_A_Movie" do
    get :Suggest_A_Movie
    assert_response :success
  end

  test "should get Shop" do
    get :Shop
    assert_response :success
  end

end
