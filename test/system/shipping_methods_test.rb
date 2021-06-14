require "application_system_test_case"

class ShippingMethodsTest < ApplicationSystemTestCase
  setup do
    @shipping_method = shipping_methods(:one)
  end

  test "visiting the index" do
    visit shipping_methods_url
    assert_selector "h1", text: "Shipping Methods"
  end

  test "creating a Shipping method" do
    visit shipping_methods_url
    click_on "New Shipping Method"

    fill_in "Name", with: @shipping_method.name
    fill_in "Shipping category", with: @shipping_method.shipping_category_id
    fill_in "Tax category", with: @shipping_method.tax_category_id
    fill_in "Zone", with: @shipping_method.zone_id
    click_on "Create Shipping method"

    assert_text "Shipping method was successfully created"
    click_on "Back"
  end

  test "updating a Shipping method" do
    visit shipping_methods_url
    click_on "Edit", match: :first

    fill_in "Name", with: @shipping_method.name
    fill_in "Shipping category", with: @shipping_method.shipping_category_id
    fill_in "Tax category", with: @shipping_method.tax_category_id
    fill_in "Zone", with: @shipping_method.zone_id
    click_on "Update Shipping method"

    assert_text "Shipping method was successfully updated"
    click_on "Back"
  end

  test "destroying a Shipping method" do
    visit shipping_methods_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Shipping method was successfully destroyed"
  end
end
