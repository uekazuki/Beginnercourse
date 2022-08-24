require "test_helper"

class Public::CustomersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @public_customer = public_customers(:one)
  end

  test "should get index" do
    get public_customers_url
    assert_response :success
  end

  test "should get new" do
    get new_public_customer_url
    assert_response :success
  end

  test "should create public_customer" do
    assert_difference('Public::Customer.count') do
      post public_customers_url, params: { public_customer: {  } }
    end

    assert_redirected_to public_customer_url(Public::Customer.last)
  end

  test "should show public_customer" do
    get public_customer_url(@public_customer)
    assert_response :success
  end

  test "should get edit" do
    get edit_public_customer_url(@public_customer)
    assert_response :success
  end

  test "should update public_customer" do
    patch public_customer_url(@public_customer), params: { public_customer: {  } }
    assert_redirected_to public_customer_url(@public_customer)
  end

  test "should destroy public_customer" do
    assert_difference('Public::Customer.count', -1) do
      delete public_customer_url(@public_customer)
    end

    assert_redirected_to public_customers_url
  end
end
