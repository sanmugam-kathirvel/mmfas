require 'test_helper'

class Admin::DoctorsControllerTest < ActionController::TestCase
  setup do
    @admin_doctor = admin_doctors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_doctors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_doctor" do
    assert_difference('Admin::Doctor.count') do
      post :create, :admin_doctor => @admin_doctor.attributes
    end

    assert_redirected_to admin_doctor_path(assigns(:admin_doctor))
  end

  test "should show admin_doctor" do
    get :show, :id => @admin_doctor.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @admin_doctor.to_param
    assert_response :success
  end

  test "should update admin_doctor" do
    put :update, :id => @admin_doctor.to_param, :admin_doctor => @admin_doctor.attributes
    assert_redirected_to admin_doctor_path(assigns(:admin_doctor))
  end

  test "should destroy admin_doctor" do
    assert_difference('Admin::Doctor.count', -1) do
      delete :destroy, :id => @admin_doctor.to_param
    end

    assert_redirected_to admin_doctors_path
  end
end
