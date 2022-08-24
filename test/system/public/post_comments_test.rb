require "application_system_test_case"

class Public::PostCommentsTest < ApplicationSystemTestCase
  setup do
    @public_post_comment = public_post_comments(:one)
  end

  test "visiting the index" do
    visit public_post_comments_url
    assert_selector "h1", text: "Public/Post Comments"
  end

  test "creating a Post comment" do
    visit public_post_comments_url
    click_on "New Public/Post Comment"

    click_on "Create Post comment"

    assert_text "Post comment was successfully created"
    click_on "Back"
  end

  test "updating a Post comment" do
    visit public_post_comments_url
    click_on "Edit", match: :first

    click_on "Update Post comment"

    assert_text "Post comment was successfully updated"
    click_on "Back"
  end

  test "destroying a Post comment" do
    visit public_post_comments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Post comment was successfully destroyed"
  end
end
