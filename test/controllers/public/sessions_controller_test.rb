require "test_helper"

class Public::SessionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @public_session = public_sessions(:one)
  end

  test "should get index" do
    get public_sessions_url
    assert_response :success
  end

  test "should get new" do
    get new_public_session_url
    assert_response :success
  end

  test "should create public_session" do
    assert_difference('Public::Session.count') do
      post public_sessions_url, params: { public_session: {  } }
    end

    assert_redirected_to public_session_url(Public::Session.last)
  end

  test "should show public_session" do
    get public_session_url(@public_session)
    assert_response :success
  end

  test "should get edit" do
    get edit_public_session_url(@public_session)
    assert_response :success
  end

  test "should update public_session" do
    patch public_session_url(@public_session), params: { public_session: {  } }
    assert_redirected_to public_session_url(@public_session)
  end

  test "should destroy public_session" do
    assert_difference('Public::Session.count', -1) do
      delete public_session_url(@public_session)
    end

    assert_redirected_to public_sessions_url
  end
end
