require "application_system_test_case"

class TaxonomiesTest < ApplicationSystemTestCase
  setup do
    @taxonomy = taxonomies(:one)
  end

  test "visiting the index" do
    visit taxonomies_url
    assert_selector "h1", text: "Taxonomies"
  end

  test "creating a Taxonomy" do
    visit taxonomies_url
    click_on "New Taxonomy"

    fill_in "Category", with: @taxonomy.category_id
    fill_in "Name", with: @taxonomy.name
    fill_in "Taxon", with: @taxonomy.taxon_id
    click_on "Create Taxonomy"

    assert_text "Taxonomy was successfully created"
    click_on "Back"
  end

  test "updating a Taxonomy" do
    visit taxonomies_url
    click_on "Edit", match: :first

    fill_in "Category", with: @taxonomy.category_id
    fill_in "Name", with: @taxonomy.name
    fill_in "Taxon", with: @taxonomy.taxon_id
    click_on "Update Taxonomy"

    assert_text "Taxonomy was successfully updated"
    click_on "Back"
  end

  test "destroying a Taxonomy" do
    visit taxonomies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Taxonomy was successfully destroyed"
  end
end
