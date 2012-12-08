require 'test_helper'

class WomenControllerTest < ActionController::TestCase
  setup do
    @woman = women(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:women)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create woman" do
    assert_difference('Woman.count') do
      post :create, woman: { Description: @woman.Description, Image_url: @woman.Image_url, Price: @woman.Price, Product_name: @woman.Product_name }
    end

    assert_redirected_to woman_path(assigns(:woman))
  end

  test "should show woman" do
    get :show, id: @woman
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @woman
    assert_response :success
  end

  test "should update woman" do
    put :update, id: @woman, woman: { Description: @woman.Description, Image_url: @woman.Image_url, Price: @woman.Price, Product_name: @woman.Product_name }
    assert_redirected_to woman_path(assigns(:woman))
  end

  test "should destroy woman" do
    assert_difference('Woman.count', -1) do
      delete :destroy, id: @woman
    end

    assert_redirected_to women_path
  end
end
