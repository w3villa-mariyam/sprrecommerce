require "test_helper"

class ProductOptionTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_option_type = product_option_types(:one)
  end

  test "should get index" do
    get product_option_types_url
    assert_response :success
  end

  test "should get new" do
    get new_product_option_type_url
    assert_response :success
  end

  test "should create product_option_type" do
    assert_difference('ProductOptionType.count') do
      post product_option_types_url, params: { product_option_type: { option_type_id: @product_option_type.option_type_id, product: @product_option_type.product } }
    end

    assert_redirected_to product_option_type_url(ProductOptionType.last)
  end

  test "should show product_option_type" do
    get product_option_type_url(@product_option_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_option_type_url(@product_option_type)
    assert_response :success
  end

  test "should update product_option_type" do
    patch product_option_type_url(@product_option_type), params: { product_option_type: { option_type_id: @product_option_type.option_type_id, product: @product_option_type.product } }
    assert_redirected_to product_option_type_url(@product_option_type)
  end

  test "should destroy product_option_type" do
    assert_difference('ProductOptionType.count', -1) do
      delete product_option_type_url(@product_option_type)
    end

    assert_redirected_to product_option_types_url
  end
end
