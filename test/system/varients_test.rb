require "application_system_test_case"

class VarientsTest < ApplicationSystemTestCase
  setup do
    @varient = varients(:one)
  end

  test "visiting the index" do
    visit varients_url
    assert_selector "h1", text: "Varients"
  end

  test "creating a Varient" do
    visit varients_url
    click_on "New Varient"

    fill_in "Cost price", with: @varient.cost_price
    fill_in "Depth", with: @varient.depth
    fill_in "Height", with: @varient.height
    fill_in "Name", with: @varient.name
    fill_in "Price", with: @varient.price
    fill_in "Sku", with: @varient.sku
    fill_in "Weight", with: @varient.weight
    fill_in "Width", with: @varient.width
    click_on "Create Varient"

    assert_text "Varient was successfully created"
    click_on "Back"
  end

  test "updating a Varient" do
    visit varients_url
    click_on "Edit", match: :first

    fill_in "Cost price", with: @varient.cost_price
    fill_in "Depth", with: @varient.depth
    fill_in "Height", with: @varient.height
    fill_in "Name", with: @varient.name
    fill_in "Price", with: @varient.price
    fill_in "Sku", with: @varient.sku
    fill_in "Weight", with: @varient.weight
    fill_in "Width", with: @varient.width
    click_on "Update Varient"

    assert_text "Varient was successfully updated"
    click_on "Back"
  end

  test "destroying a Varient" do
    visit varients_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Varient was successfully destroyed"
  end
end
