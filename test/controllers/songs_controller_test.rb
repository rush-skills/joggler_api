require 'test_helper'

class SongsControllerTest < ActionController::TestCase
  setup do
    @song = songs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:songs)
  end

  test "should create song" do
    assert_difference('Song.count') do
      post :create, song: { metadata: @song.metadata, playlist_id: @song.playlist_id, title: @song.title, url: @song.url }
    end

    assert_response 201
  end

  test "should show song" do
    get :show, id: @song
    assert_response :success
  end

  test "should update song" do
    put :update, id: @song, song: { metadata: @song.metadata, playlist_id: @song.playlist_id, title: @song.title, url: @song.url }
    assert_response 204
  end

  test "should destroy song" do
    assert_difference('Song.count', -1) do
      delete :destroy, id: @song
    end

    assert_response 204
  end
end
