require 'test_helper'

class RedirectsControllerTest < ActionController::TestCase
  setup do
    @redirect = redirects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:redirects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create redirect" do
    assert_difference('Redirect.count') do
      post :create, :redirect => @redirect.attributes
    end

    assert_redirected_to redirect_path(assigns(:redirect))
  end

  test "should show redirect" do
    get :show, :id => @redirect.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @redirect.to_param
    assert_response :success
  end

  test "should update redirect" do
    put :update, :id => @redirect.to_param, :redirect => @redirect.attributes
    assert_redirected_to redirect_path(assigns(:redirect))
  end

  test "should destroy redirect" do
    assert_difference('Redirect.count', -1) do
      delete :destroy, :id => @redirect.to_param
    end

    assert_redirected_to redirects_path
  end
end
