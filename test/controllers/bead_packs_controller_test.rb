require 'test_helper'

class BeadPacksControllerTest < ActionController::TestCase
  setup do
    @bead_pack = bead_packs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bead_packs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bead_pack" do
    assert_difference('BeadPack.count') do
      post :create, bead_pack: { colors: @bead_pack.colors, count: @bead_pack.count, name: @bead_pack.name, size: @bead_pack.size, type: @bead_pack.type }
    end

    assert_redirected_to bead_pack_path(assigns(:bead_pack))
  end

  test "should show bead_pack" do
    get :show, id: @bead_pack
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bead_pack
    assert_response :success
  end

  test "should update bead_pack" do
    patch :update, id: @bead_pack, bead_pack: { colors: @bead_pack.colors, count: @bead_pack.count, name: @bead_pack.name, size: @bead_pack.size, type: @bead_pack.type }
    assert_redirected_to bead_pack_path(assigns(:bead_pack))
  end

  test "should destroy bead_pack" do
    assert_difference('BeadPack.count', -1) do
      delete :destroy, id: @bead_pack
    end

    assert_redirected_to bead_packs_path
  end
end
