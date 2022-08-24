require "test_helper"

class Admin::SessionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_session = admin_sessions(:one)
  end

  test "should get index" do
    get admin_sessions_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_session_url
    assert_response :success
  end

  test "should create admin_session" do
    assert_difference('Admin::Session.count') do
      post admin_sessions_url, params: { admin_session: {  } }
    end

    assert_redirected_to admin_session_url(Admin::Session.last)
  end

  test "should show admin_session" do
    get admin_session_url(@admin_session)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_session_url(@admin_session)
    assert_response :success
  end

  test "should update admin_session" do
    patch admin_session_url(@admin_session), params: { admin_session: {  } }
    assert_redirected_to admin_session_url(@admin_session)
  end

  test "should destroy admin_session" do
    assert_difference('Admin::Session.count', -1) do
      delete admin_session_url(@admin_session)
    end

    assert_redirected_to admin_sessions_url
  end
end
