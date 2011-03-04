require 'test_helper'

class PersonaldatasControllerTest < ActionController::TestCase
  setup do
    @personaldata = personaldatas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:personaldatas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create personaldata" do
    assert_difference('Personaldata.count') do
      post :create, :personaldata => @personaldata.attributes
    end

    assert_redirected_to personaldata_path(assigns(:personaldata))
  end

  test "should show personaldata" do
    get :show, :id => @personaldata.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @personaldata.to_param
    assert_response :success
  end

  test "should update personaldata" do
    put :update, :id => @personaldata.to_param, :personaldata => @personaldata.attributes
    assert_redirected_to personaldata_path(assigns(:personaldata))
  end

  test "should destroy personaldata" do
    assert_difference('Personaldata.count', -1) do
      delete :destroy, :id => @personaldata.to_param
    end

    assert_redirected_to personaldatas_path
  end
end
