require 'test_helper'

class PublishingHousesControllerTest < ActionController::TestCase
  setup do
    @publishing_house = publishing_houses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:publishing_houses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create publishing_house" do
    assert_difference('PublishingHouse.count') do
      post :create, publishing_house: { discount: @publishing_house.discount, name: @publishing_house.name }
    end

    assert_redirected_to publishing_house_path(assigns(:publishing_house))
  end

  test "should show publishing_house" do
    get :show, id: @publishing_house
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @publishing_house
    assert_response :success
  end

  test "should update publishing_house" do
    patch :update, id: @publishing_house, publishing_house: { discount: @publishing_house.discount, name: @publishing_house.name }
    assert_redirected_to publishing_house_path(assigns(:publishing_house))
  end

  test "should destroy publishing_house" do
    assert_difference('PublishingHouse.count', -1) do
      delete :destroy, id: @publishing_house
    end

    assert_redirected_to publishing_houses_path
  end
end
