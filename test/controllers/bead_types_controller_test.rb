require 'test_helper'

class BeadTypesControllerTest < ActionController::TestCase
  setup do
    @bead_type = bead_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bead_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bead_type" do
    assert_difference('BeadType.count') do
      post :create, bead_type: {  }
    end

    assert_redirected_to bead_type_path(assigns(:bead_type))
  end

  test "should show bead_type" do
    get :show, id: @bead_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bead_type
    assert_response :success
  end

  test "should update bead_type" do
    patch :update, id: @bead_type, bead_type: {  }
    assert_redirected_to bead_type_path(assigns(:bead_type))
  end

  test "should destroy bead_type" do
    assert_difference('BeadType.count', -1) do
      delete :destroy, id: @bead_type
    end

    assert_redirected_to bead_types_path
  end
end
