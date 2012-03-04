require 'test_helper'

class OpenErpsControllerTest < ActionController::TestCase
  setup do
    @open_erp = open_erps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:open_erps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create open_erp" do
    assert_difference('OpenErp.count') do
      post :create, open_erp: @open_erp.attributes
    end

    assert_redirected_to open_erp_path(assigns(:open_erp))
  end

  test "should show open_erp" do
    get :show, id: @open_erp
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @open_erp
    assert_response :success
  end

  test "should update open_erp" do
    put :update, id: @open_erp, open_erp: @open_erp.attributes
    assert_redirected_to open_erp_path(assigns(:open_erp))
  end

  test "should destroy open_erp" do
    assert_difference('OpenErp.count', -1) do
      delete :destroy, id: @open_erp
    end

    assert_redirected_to open_erps_path
  end
end
