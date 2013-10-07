require 'test_helper'

class NguoiDungsControllerTest < ActionController::TestCase
  setup do
    @nguoi_dung = nguoi_dungs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nguoi_dungs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nguoi_dung" do
    assert_difference('NguoiDung.count') do
      post :create, nguoi_dung: @nguoi_dung.attributes
    end

    assert_redirected_to nguoi_dung_path(assigns(:nguoi_dung))
  end

  test "should show nguoi_dung" do
    get :show, id: @nguoi_dung.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nguoi_dung.to_param
    assert_response :success
  end

  test "should update nguoi_dung" do
    put :update, id: @nguoi_dung.to_param, nguoi_dung: @nguoi_dung.attributes
    assert_redirected_to nguoi_dung_path(assigns(:nguoi_dung))
  end

  test "should destroy nguoi_dung" do
    assert_difference('NguoiDung.count', -1) do
      delete :destroy, id: @nguoi_dung.to_param
    end

    assert_redirected_to nguoi_dungs_path
  end
end
