require "application_system_test_case"

class ProductOptionTypesTest < ApplicationSystemTestCase
  setup do
    @product_option_type = product_option_types(:one)
  end

  test "visiting the index" do
    visit product_option_types_url
    assert_selector "h1", text: "Product Option Types"
  end

  test "creating a Product option type" do
    visit product_option_types_url
    click_on "New Product Option Type"

    fill_in "Option type", with: @product_option_type.option_type_id
    fill_in "Product", with: @product_option_type.product
    click_on "Create Product option type"

    assert_text "Product option type was successfully created"
    click_on "Back"
  end

  test "updating a Product option type" do
    visit product_option_types_url
    click_on "Edit", match: :first

    fill_in "Option type", with: @product_option_type.option_type_id
    fill_in "Product", with: @product_option_type.product
    click_on "Update Product option type"

    assert_text "Product option type was successfully updated"
    click_on "Back"
  end

  test "destroying a Product option type" do
    visit product_option_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Product option type was successfully destroyed"
  end
end
