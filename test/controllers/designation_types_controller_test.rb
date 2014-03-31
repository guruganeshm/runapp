require 'test_helper'

class DesignationTypesControllerTest < ActionController::TestCase
  setup do
    @designation_type = designation_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:designation_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create designation_type" do
    assert_difference('DesignationType.count') do
      post :create, designation_type: { name: @designation_type.name }
    end

    assert_redirected_to designation_type_path(assigns(:designation_type))
  end

  test "should show designation_type" do
    get :show, id: @designation_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @designation_type
    assert_response :success
  end

  test "should update designation_type" do
    patch :update, id: @designation_type, designation_type: { name: @designation_type.name }
    assert_redirected_to designation_type_path(assigns(:designation_type))
  end

  test "should destroy designation_type" do
    assert_difference('DesignationType.count', -1) do
      delete :destroy, id: @designation_type
    end

    assert_redirected_to designation_types_path
  end
end
