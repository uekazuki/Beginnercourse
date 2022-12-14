require "application_system_test_case"

class Public::RegistrationsTest < ApplicationSystemTestCase
  setup do
    @public_registration = public_registrations(:one)
  end

  test "visiting the index" do
    visit public_registrations_url
    assert_selector "h1", text: "Public/Registrations"
  end

  test "creating a Registration" do
    visit public_registrations_url
    click_on "New Public/Registration"

    click_on "Create Registration"

    assert_text "Registration was successfully created"
    click_on "Back"
  end

  test "updating a Registration" do
    visit public_registrations_url
    click_on "Edit", match: :first

    click_on "Update Registration"

    assert_text "Registration was successfully updated"
    click_on "Back"
  end

  test "destroying a Registration" do
    visit public_registrations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Registration was successfully destroyed"
  end
end
