require "application_system_test_case"

class PaymentMethodsTest < ApplicationSystemTestCase
  setup do
    @payment_method = payment_methods(:one)
  end

  test "visiting the index" do
    visit payment_methods_url
    assert_selector "h1", text: "Payment Methods"
  end

  test "creating a Payment method" do
    visit payment_methods_url
    click_on "New Payment Method"

    fill_in "Discription", with: @payment_method.discription
    fill_in "Name", with: @payment_method.name
    fill_in "Provider", with: @payment_method.provider
    fill_in "Store", with: @payment_method.store
    click_on "Create Payment method"

    assert_text "Payment method was successfully created"
    click_on "Back"
  end

  test "updating a Payment method" do
    visit payment_methods_url
    click_on "Edit", match: :first

    fill_in "Discription", with: @payment_method.discription
    fill_in "Name", with: @payment_method.name
    fill_in "Provider", with: @payment_method.provider
    fill_in "Store", with: @payment_method.store
    click_on "Update Payment method"

    assert_text "Payment method was successfully updated"
    click_on "Back"
  end

  test "destroying a Payment method" do
    visit payment_methods_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Payment method was successfully destroyed"
  end
end
