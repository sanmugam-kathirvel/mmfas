require 'test_helper'

class Admin::ClassifydoctorsControllerTest < ActionController::TestCase
  setup do
    @admin_classifydoctor = admin_classifydoctors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_classifydoctors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_classifydoctor" do
    assert_difference('Admin::Classifydoctor.count') do
      post :create, :admin_classifydoctor => @admin_classifydoctor.attributes
    end

    assert_redirected_to admin_classifydoctor_path(assigns(:admin_classifydoctor))
  end

  test "should show admin_classifydoctor" do
    get :show, :id => @admin_classifydoctor.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @admin_classifydoctor.to_param
    assert_response :success
  end

  test "should update admin_classifydoctor" do
    put :update, :id => @admin_classifydoctor.to_param, :admin_classifydoctor => @admin_classifydoctor.attributes
    assert_redirected_to admin_classifydoctor_path(assigns(:admin_classifydoctor))
  end

  test "should destroy admin_classifydoctor" do
    assert_difference('Admin::Classifydoctor.count', -1) do
      delete :destroy, :id => @admin_classifydoctor.to_param
    end

    assert_redirected_to admin_classifydoctors_path
  end
end
