require "test_helper"

class Public::PostCommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @public_post_comment = public_post_comments(:one)
  end

  test "should get index" do
    get public_post_comments_url
    assert_response :success
  end

  test "should get new" do
    get new_public_post_comment_url
    assert_response :success
  end

  test "should create public_post_comment" do
    assert_difference('Public::PostComment.count') do
      post public_post_comments_url, params: { public_post_comment: {  } }
    end

    assert_redirected_to public_post_comment_url(Public::PostComment.last)
  end

  test "should show public_post_comment" do
    get public_post_comment_url(@public_post_comment)
    assert_response :success
  end

  test "should get edit" do
    get edit_public_post_comment_url(@public_post_comment)
    assert_response :success
  end

  test "should update public_post_comment" do
    patch public_post_comment_url(@public_post_comment), params: { public_post_comment: {  } }
    assert_redirected_to public_post_comment_url(@public_post_comment)
  end

  test "should destroy public_post_comment" do
    assert_difference('Public::PostComment.count', -1) do
      delete public_post_comment_url(@public_post_comment)
    end

    assert_redirected_to public_post_comments_url
  end
end
