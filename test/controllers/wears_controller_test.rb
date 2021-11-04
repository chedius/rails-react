require "test_helper"

class WearsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wear = wears(:one)
  end

  test "should get index" do
    get wears_url
    assert_response :success
  end

  test "should get new" do
    get new_wear_url
    assert_response :success
  end

  test "should create wear" do
    assert_difference('Wear.count') do
      post wears_url, params: { wear: { brand: @wear.brand, country: @wear.country, element: @wear.element, quantity: @wear.quantity } }
    end

    assert_redirected_to wear_url(Wear.last)
  end

  test "should show wear" do
    get wear_url(@wear)
    assert_response :success
  end

  test "should get edit" do
    get edit_wear_url(@wear)
    assert_response :success
  end

  test "should update wear" do
    patch wear_url(@wear), params: { wear: { brand: @wear.brand, country: @wear.country, element: @wear.element, quantity: @wear.quantity } }
    assert_redirected_to wear_url(@wear)
  end

  test "should destroy wear" do
    assert_difference('Wear.count', -1) do
      delete wear_url(@wear)
    end

    assert_redirected_to wears_url
  end
end
