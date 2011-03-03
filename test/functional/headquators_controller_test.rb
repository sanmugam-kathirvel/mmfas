require 'test_helper'

class HeadquatorsControllerTest < ActionController::TestCase
  setup do
    @headquator = headquators(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:headquators)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create headquator" do
    assert_difference('Headquator.count') do
      post :create, :headquator => @headquator.attributes
    end

    assert_redirected_to headquator_path(assigns(:headquator))
  end

  test "should show headquator" do
    get :show, :id => @headquator.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @headquator.to_param
    assert_response :success
  end

  test "should update headquator" do
    put :update, :id => @headquator.to_param, :headquator => @headquator.attributes
    assert_redirected_to headquator_path(assigns(:headquator))
  end

  test "should destroy headquator" do
    assert_difference('Headquator.count', -1) do
      delete :destroy, :id => @headquator.to_param
    end

    assert_redirected_to headquators_path
  end
end
