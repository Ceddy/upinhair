require 'test_helper'

class LookImagesControllerTest < ActionController::TestCase
  setup do
    @look_image = look_images(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:look_images)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create look_image" do
    assert_difference('LookImage.count') do
      post :create, look_image: { id: @look_image.id }
    end

    assert_redirected_to look_image_path(assigns(:look_image))
  end

  test "should show look_image" do
    get :show, id: @look_image
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @look_image
    assert_response :success
  end

  test "should update look_image" do
    put :update, id: @look_image, look_image: { id: @look_image.id }
    assert_redirected_to look_image_path(assigns(:look_image))
  end

  test "should destroy look_image" do
    assert_difference('LookImage.count', -1) do
      delete :destroy, id: @look_image
    end

    assert_redirected_to look_images_path
  end
end
