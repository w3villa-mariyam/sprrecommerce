require "test_helper"

class ShippingCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shipping_category = shipping_categories(:one)
  end

  test "should get index" do
    get shipping_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_shipping_category_url
    assert_response :success
  end

  test "should create shipping_category" do
    assert_difference('ShippingCategory.count') do
      post shipping_categories_url, params: { shipping_category: { name: @shipping_category.name } }
    end

    assert_redirected_to shipping_category_url(ShippingCategory.last)
  end

  test "should show shipping_category" do
    get shipping_category_url(@shipping_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_shipping_category_url(@shipping_category)
    assert_response :success
  end

  test "should update shipping_category" do
    patch shipping_category_url(@shipping_category), params: { shipping_category: { name: @shipping_category.name } }
    assert_redirected_to shipping_category_url(@shipping_category)
  end

  test "should destroy shipping_category" do
    assert_difference('ShippingCategory.count', -1) do
      delete shipping_category_url(@shipping_category)
    end

    assert_redirected_to shipping_categories_url
  end
end
