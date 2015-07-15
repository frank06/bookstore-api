require 'test_helper'

class PublishingHousesControllerTest < ActionController::TestCase
  setup do
    @publishing_house = publishing_houses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should create publishing_house" do
    assert_difference('PublishingHouse.count') do
      post :create, params: { publishing_house: { discount: @publishing_house.discount, name: @publishing_house.name } }
    end

    assert_response 201
  end

  test "should show publishing_house" do
    get :show, params: { id: @publishing_house }
    assert_response :success
  end

  test "should update publishing_house" do
    patch :update, params: { id: @publishing_house, publishing_house: { discount: @publishing_house.discount, name: @publishing_house.name } }
    assert_response 200
  end

  test "should destroy publishing_house" do
    assert_difference('PublishingHouse.count', -1) do
      delete :destroy, params: { id: @publishing_house }
    end

    assert_response 204
  end
end
