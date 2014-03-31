require 'test_helper'

class DesignationTypeDesignationsControllerTest < ActionController::TestCase
  setup do
    @designation_type_designation = designation_type_designations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:designation_type_designations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create designation_type_designation" do
    assert_difference('DesignationTypeDesignation.count') do
      post :create, designation_type_designation: { designation_id: @designation_type_designation.designation_id, designation_type_id: @designation_type_designation.designation_type_id }
    end

    assert_redirected_to designation_type_designation_path(assigns(:designation_type_designation))
  end

  test "should show designation_type_designation" do
    get :show, id: @designation_type_designation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @designation_type_designation
    assert_response :success
  end

  test "should update designation_type_designation" do
    patch :update, id: @designation_type_designation, designation_type_designation: { designation_id: @designation_type_designation.designation_id, designation_type_id: @designation_type_designation.designation_type_id }
    assert_redirected_to designation_type_designation_path(assigns(:designation_type_designation))
  end

  test "should destroy designation_type_designation" do
    assert_difference('DesignationTypeDesignation.count', -1) do
      delete :destroy, id: @designation_type_designation
    end

    assert_redirected_to designation_type_designations_path
  end
end
