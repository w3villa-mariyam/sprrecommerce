require "application_system_test_case"

class TaxRatesTest < ApplicationSystemTestCase
  setup do
    @tax_rate = tax_rates(:one)
  end

  test "visiting the index" do
    visit tax_rates_url
    assert_selector "h1", text: "Tax Rates"
  end

  test "creating a Tax rate" do
    visit tax_rates_url
    click_on "New Tax Rate"

    fill_in "Amount", with: @tax_rate.amount
    fill_in "Name", with: @tax_rate.name
    fill_in "Tax category", with: @tax_rate.tax_category_id
    fill_in "Zone", with: @tax_rate.zone
    click_on "Create Tax rate"

    assert_text "Tax rate was successfully created"
    click_on "Back"
  end

  test "updating a Tax rate" do
    visit tax_rates_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @tax_rate.amount
    fill_in "Name", with: @tax_rate.name
    fill_in "Tax category", with: @tax_rate.tax_category_id
    fill_in "Zone", with: @tax_rate.zone
    click_on "Update Tax rate"

    assert_text "Tax rate was successfully updated"
    click_on "Back"
  end

  test "destroying a Tax rate" do
    visit tax_rates_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tax rate was successfully destroyed"
  end
end
