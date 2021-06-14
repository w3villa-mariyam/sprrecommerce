require "application_system_test_case"

class TaxCategoriesTest < ApplicationSystemTestCase
  setup do
    @tax_category = tax_categories(:one)
  end

  test "visiting the index" do
    visit tax_categories_url
    assert_selector "h1", text: "Tax Categories"
  end

  test "creating a Tax category" do
    visit tax_categories_url
    click_on "New Tax Category"

    fill_in "Code", with: @tax_category.code
    fill_in "Discription", with: @tax_category.discription
    fill_in "Name", with: @tax_category.name
    click_on "Create Tax category"

    assert_text "Tax category was successfully created"
    click_on "Back"
  end

  test "updating a Tax category" do
    visit tax_categories_url
    click_on "Edit", match: :first

    fill_in "Code", with: @tax_category.code
    fill_in "Discription", with: @tax_category.discription
    fill_in "Name", with: @tax_category.name
    click_on "Update Tax category"

    assert_text "Tax category was successfully updated"
    click_on "Back"
  end

  test "destroying a Tax category" do
    visit tax_categories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tax category was successfully destroyed"
  end
end
