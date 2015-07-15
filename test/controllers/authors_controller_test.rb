require 'test_helper'

class AuthorsControllerTest < ActionController::TestCase
  setup do
    @author = authors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should create author" do
    assert_difference('Author.count') do
      post :create, params: { author: { name: @author.name } }
    end

    assert_response 201
  end

  test "should show author" do
    get :show, params: { id: @author }
    assert_response :success
  end

  test "should update author" do
    patch :update, params: { id: @author, author: { name: @author.name } }
    assert_response 200
  end

  test "should destroy author" do
    assert_difference('Author.count', -1) do
      delete :destroy, params: { id: @author }
    end

    assert_response 204
  end
end
