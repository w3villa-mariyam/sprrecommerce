require "application_system_test_case"

class ShippingCategoriesTest < ApplicationSystemTestCase
  setup do
    @shipping_category = shipping_categories(:one)
  end

  test "visiting the index" do
    visit shipping_categories_url
    assert_selector "h1", text: "Shipping Categories"
  end

  test "creating a Shipping category" do
    visit shipping_categories_url
    click_on "New Shipping Category"

    fill_in "Name", with: @shipping_category.name
    click_on "Create Shipping category"

    assert_text "Shipping category was successfully created"
    click_on "Back"
  end

  test "updating a Shipping category" do
    visit shipping_categories_url
    click_on "Edit", match: :first

    fill_in "Name", with: @shipping_category.name
    click_on "Update Shipping category"

    assert_text "Shipping category was successfully updated"
    click_on "Back"
  end

  test "destroying a Shipping category" do
    visit shipping_categories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Shipping category was successfully destroyed"
  end
end
