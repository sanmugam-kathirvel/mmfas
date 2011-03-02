require 'test_helper'

class ClassifydoctorsControllerTest < ActionController::TestCase
  setup do
    @classifydoctor = classifydoctors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:classifydoctors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create classifydoctor" do
    assert_difference('Classifydoctor.count') do
      post :create, :classifydoctor => @classifydoctor.attributes
    end

    assert_redirected_to classifydoctor_path(assigns(:classifydoctor))
  end

  test "should show classifydoctor" do
    get :show, :id => @classifydoctor.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @classifydoctor.to_param
    assert_response :success
  end

  test "should update classifydoctor" do
    put :update, :id => @classifydoctor.to_param, :classifydoctor => @classifydoctor.attributes
    assert_redirected_to classifydoctor_path(assigns(:classifydoctor))
  end

  test "should destroy classifydoctor" do
    assert_difference('Classifydoctor.count', -1) do
      delete :destroy, :id => @classifydoctor.to_param
    end

    assert_redirected_to classifydoctors_path
  end
end
