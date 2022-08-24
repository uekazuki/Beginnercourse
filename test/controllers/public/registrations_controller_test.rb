require "test_helper"

class Public::RegistrationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @public_registration = public_registrations(:one)
  end

  test "should get index" do
    get public_registrations_url
    assert_response :success
  end

  test "should get new" do
    get new_public_registration_url
    assert_response :success
  end

  test "should create public_registration" do
    assert_difference('Public::Registration.count') do
      post public_registrations_url, params: { public_registration: {  } }
    end

    assert_redirected_to public_registration_url(Public::Registration.last)
  end

  test "should show public_registration" do
    get public_registration_url(@public_registration)
    assert_response :success
  end

  test "should get edit" do
    get edit_public_registration_url(@public_registration)
    assert_response :success
  end

  test "should update public_registration" do
    patch public_registration_url(@public_registration), params: { public_registration: {  } }
    assert_redirected_to public_registration_url(@public_registration)
  end

  test "should destroy public_registration" do
    assert_difference('Public::Registration.count', -1) do
      delete public_registration_url(@public_registration)
    end

    assert_redirected_to public_registrations_url
  end
end
