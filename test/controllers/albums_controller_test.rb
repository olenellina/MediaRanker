require 'test_helper'

class AlbumsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show" do
    get :show, {id: 1}
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create an entity" do
    assert_difference('Album.count', 1) do
      post_params = { album: { title: "Album Title", author: "Grace Hopper", description: "Great album on computers!" }}
      post :create, post_params
    end
    assert_response :redirect
  end
  #
  test "should get edit" do
    get :edit, {id: 1}
    assert_response :success
  end

test "should be able to update" do
    put :update, :id => albums(:one), :album => {:title => 'New Title'}
    assert_equal "New Title", Album.find(albums(:one).id).title
  end

  test "should be able to delete" do
    delete :destroy, {id: 1 }
    assert_response :redirect
  end

  test "should be able to upvote" do
    @request.env['HTTP_REFERER'] = '/albums/index'
    post :upvote, {id: 1}
    assert_response :redirect
  end

end
