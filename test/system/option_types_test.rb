require "application_system_test_case"

class OptionTypesTest < ApplicationSystemTestCase
  setup do
    @option_type = option_types(:one)
  end

  test "visiting the index" do
    visit option_types_url
    assert_selector "h1", text: "Option Types"
  end

  test "creating a Option type" do
    visit option_types_url
    click_on "New Option Type"

    fill_in "Name", with: @option_type.name
    fill_in "Value", with: @option_type.value
    click_on "Create Option type"

    assert_text "Option type was successfully created"
    click_on "Back"
  end

  test "updating a Option type" do
    visit option_types_url
    click_on "Edit", match: :first

    fill_in "Name", with: @option_type.name
    fill_in "Value", with: @option_type.value
    click_on "Update Option type"

    assert_text "Option type was successfully updated"
    click_on "Back"
  end

  test "destroying a Option type" do
    visit option_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Option type was successfully destroyed"
  end
end
