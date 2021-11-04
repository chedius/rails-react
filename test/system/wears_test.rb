require "application_system_test_case"

class WearsTest < ApplicationSystemTestCase
  setup do
    @wear = wears(:one)
  end

  test "visiting the index" do
    visit wears_url
    assert_selector "h1", text: "Wears"
  end

  test "creating a Wear" do
    visit wears_url
    click_on "New Wear"

    fill_in "Brand", with: @wear.brand
    fill_in "Country", with: @wear.country
    fill_in "Element", with: @wear.element
    fill_in "Quantity", with: @wear.quantity
    click_on "Create Wear"

    assert_text "Wear was successfully created"
    click_on "Back"
  end

  test "updating a Wear" do
    visit wears_url
    click_on "Edit", match: :first

    fill_in "Brand", with: @wear.brand
    fill_in "Country", with: @wear.country
    fill_in "Element", with: @wear.element
    fill_in "Quantity", with: @wear.quantity
    click_on "Update Wear"

    assert_text "Wear was successfully updated"
    click_on "Back"
  end

  test "destroying a Wear" do
    visit wears_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Wear was successfully destroyed"
  end
end
