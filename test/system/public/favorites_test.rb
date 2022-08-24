require "application_system_test_case"

class Public::FavoritesTest < ApplicationSystemTestCase
  setup do
    @public_favorite = public_favorites(:one)
  end

  test "visiting the index" do
    visit public_favorites_url
    assert_selector "h1", text: "Public/Favorites"
  end

  test "creating a Favorite" do
    visit public_favorites_url
    click_on "New Public/Favorite"

    click_on "Create Favorite"

    assert_text "Favorite was successfully created"
    click_on "Back"
  end

  test "updating a Favorite" do
    visit public_favorites_url
    click_on "Edit", match: :first

    click_on "Update Favorite"

    assert_text "Favorite was successfully updated"
    click_on "Back"
  end

  test "destroying a Favorite" do
    visit public_favorites_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Favorite was successfully destroyed"
  end
end
