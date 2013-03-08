require 'test_helper'

class BeattapesControllerTest < ActionController::TestCase
  setup do
    @beattape = beattapes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:beattapes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create beattape" do
    assert_difference('Beattape.count') do
      post :create, beattape: { author: @beattape.author, content: @beattape.content, source: @beattape.source, title: @beattape.title }
    end

    assert_redirected_to beattape_path(assigns(:beattape))
  end

  test "should show beattape" do
    get :show, id: @beattape
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @beattape
    assert_response :success
  end

  test "should update beattape" do
    put :update, id: @beattape, beattape: { author: @beattape.author, content: @beattape.content, source: @beattape.source, title: @beattape.title }
    assert_redirected_to beattape_path(assigns(:beattape))
  end

  test "should destroy beattape" do
    assert_difference('Beattape.count', -1) do
      delete :destroy, id: @beattape
    end

    assert_redirected_to beattapes_path
  end
end
