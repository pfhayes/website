require 'test_helper'

class FoliosControllerTest < ActionController::TestCase
  setup do
    @folio = folios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:folios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create folio" do
    assert_difference('Folio.count') do
      post :create, :folio => @folio.attributes
    end

    assert_redirected_to folio_path(assigns(:folio))
  end

  test "should show folio" do
    get :show, :id => @folio.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @folio.to_param
    assert_response :success
  end

  test "should update folio" do
    put :update, :id => @folio.to_param, :folio => @folio.attributes
    assert_redirected_to folio_path(assigns(:folio))
  end

  test "should destroy folio" do
    assert_difference('Folio.count', -1) do
      delete :destroy, :id => @folio.to_param
    end

    assert_redirected_to folios_path
  end
end
