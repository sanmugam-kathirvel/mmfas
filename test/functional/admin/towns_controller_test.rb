require 'test_helper'

class Admin::TownsControllerTest < ActionController::TestCase
  setup do
    @admin_town = admin_towns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_towns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_town" do
    assert_difference('Admin::Town.count') do
      post :create, :admin_town => @admin_town.attributes
    end

    assert_redirected_to admin_town_path(assigns(:admin_town))
  end

  test "should show admin_town" do
    get :show, :id => @admin_town.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @admin_town.to_param
    assert_response :success
  end

  test "should update admin_town" do
    put :update, :id => @admin_town.to_param, :admin_town => @admin_town.attributes
    assert_redirected_to admin_town_path(assigns(:admin_town))
  end

  test "should destroy admin_town" do
    assert_difference('Admin::Town.count', -1) do
      delete :destroy, :id => @admin_town.to_param
    end

    assert_redirected_to admin_towns_path
  end
end
