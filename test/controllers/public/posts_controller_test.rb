require "test_helper"

class Public::PostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @public_post = public_posts(:one)
  end

  test "should get index" do
    get public_posts_url
    assert_response :success
  end

  test "should get new" do
    get new_public_post_url
    assert_response :success
  end

  test "should create public_post" do
    assert_difference('Public::Post.count') do
      post public_posts_url, params: { public_post: {  } }
    end

    assert_redirected_to public_post_url(Public::Post.last)
  end

  test "should show public_post" do
    get public_post_url(@public_post)
    assert_response :success
  end

  test "should get edit" do
    get edit_public_post_url(@public_post)
    assert_response :success
  end

  test "should update public_post" do
    patch public_post_url(@public_post), params: { public_post: {  } }
    assert_redirected_to public_post_url(@public_post)
  end

  test "should destroy public_post" do
    assert_difference('Public::Post.count', -1) do
      delete public_post_url(@public_post)
    end

    assert_redirected_to public_posts_url
  end
end
