require "test_helper"

class TaxRatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tax_rate = tax_rates(:one)
  end

  test "should get index" do
    get tax_rates_url
    assert_response :success
  end

  test "should get new" do
    get new_tax_rate_url
    assert_response :success
  end

  test "should create tax_rate" do
    assert_difference('TaxRate.count') do
      post tax_rates_url, params: { tax_rate: { amount: @tax_rate.amount, name: @tax_rate.name, tax_category_id: @tax_rate.tax_category_id, zone: @tax_rate.zone } }
    end

    assert_redirected_to tax_rate_url(TaxRate.last)
  end

  test "should show tax_rate" do
    get tax_rate_url(@tax_rate)
    assert_response :success
  end

  test "should get edit" do
    get edit_tax_rate_url(@tax_rate)
    assert_response :success
  end

  test "should update tax_rate" do
    patch tax_rate_url(@tax_rate), params: { tax_rate: { amount: @tax_rate.amount, name: @tax_rate.name, tax_category_id: @tax_rate.tax_category_id, zone: @tax_rate.zone } }
    assert_redirected_to tax_rate_url(@tax_rate)
  end

  test "should destroy tax_rate" do
    assert_difference('TaxRate.count', -1) do
      delete tax_rate_url(@tax_rate)
    end

    assert_redirected_to tax_rates_url
  end
end
