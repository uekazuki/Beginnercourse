require "test_helper"

class Public::FavoritesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @public_favorite = public_favorites(:one)
  end

  test "should get index" do
    get public_favorites_url
    assert_response :success
  end

  test "should get new" do
    get new_public_favorite_url
    assert_response :success
  end

  test "should create public_favorite" do
    assert_difference('Public::Favorite.count') do
      post public_favorites_url, params: { public_favorite: {  } }
    end

    assert_redirected_to public_favorite_url(Public::Favorite.last)
  end

  test "should show public_favorite" do
    get public_favorite_url(@public_favorite)
    assert_response :success
  end

  test "should get edit" do
    get edit_public_favorite_url(@public_favorite)
    assert_response :success
  end

  test "should update public_favorite" do
    patch public_favorite_url(@public_favorite), params: { public_favorite: {  } }
    assert_redirected_to public_favorite_url(@public_favorite)
  end

  test "should destroy public_favorite" do
    assert_difference('Public::Favorite.count', -1) do
      delete public_favorite_url(@public_favorite)
    end

    assert_redirected_to public_favorites_url
  end
end
