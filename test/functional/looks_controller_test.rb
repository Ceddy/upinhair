require 'test_helper'

class LooksControllerTest < ActionController::TestCase
  setup do
    @look = looks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:looks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create look" do
    assert_difference('Look.count') do
      post :create, look: { description: @look.description, id: @look.id }
    end

    assert_redirected_to look_path(assigns(:look))
  end

  test "should show look" do
    get :show, id: @look
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @look
    assert_response :success
  end

  test "should update look" do
    put :update, id: @look, look: { description: @look.description, id: @look.id }
    assert_redirected_to look_path(assigns(:look))
  end

  test "should destroy look" do
    assert_difference('Look.count', -1) do
      delete :destroy, id: @look
    end

    assert_redirected_to looks_path
  end
end
