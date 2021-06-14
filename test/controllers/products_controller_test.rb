require "test_helper"

class ProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get products_url
    assert_response :success
  end

  test "should get new" do
    get new_product_url
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post products_url, params: { product: { discription: @product.discription, meta_discription: @product.meta_discription, meta_keyword: @product.meta_keyword, meta_title: @product.meta_title, name: @product.name, option_type_id: @product.option_type_id, price: @product.price, sku: @product.sku, tax_category_id: @product.tax_category_id, varient_id: @product.varient_id } }
    end

    assert_redirected_to product_url(Product.last)
  end

  test "should show product" do
    get product_url(@product)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_url(@product)
    assert_response :success
  end

  test "should update product" do
    patch product_url(@product), params: { product: { discription: @product.discription, meta_discription: @product.meta_discription, meta_keyword: @product.meta_keyword, meta_title: @product.meta_title, name: @product.name, option_type_id: @product.option_type_id, price: @product.price, sku: @product.sku, tax_category_id: @product.tax_category_id, varient_id: @product.varient_id } }
    assert_redirected_to product_url(@product)
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete product_url(@product)
    end

    assert_redirected_to products_url
  end
end
