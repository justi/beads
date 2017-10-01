require 'test_helper'

class BeadColorsControllerTest < ActionController::TestCase
  setup do
    @bead_color = bead_colors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bead_colors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bead_color" do
    assert_difference('BeadColor.count') do
      post :create, bead_color: {  }
    end

    assert_redirected_to bead_color_path(assigns(:bead_color))
  end

  test "should show bead_color" do
    get :show, id: @bead_color
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bead_color
    assert_response :success
  end

  test "should update bead_color" do
    patch :update, id: @bead_color, bead_color: {  }
    assert_redirected_to bead_color_path(assigns(:bead_color))
  end

  test "should destroy bead_color" do
    assert_difference('BeadColor.count', -1) do
      delete :destroy, id: @bead_color
    end

    assert_redirected_to bead_colors_path
  end
end
