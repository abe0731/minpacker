require "application_system_test_case"

class RentUnitsTest < ApplicationSystemTestCase
  setup do
    @rent_unit = rent_units(:one)
  end

  test "visiting the index" do
    visit rent_units_url
    assert_selector "h1", text: "Rent Units"
  end

  test "creating a Rent unit" do
    visit rent_units_url
    click_on "New Rent Unit"

    fill_in "Name", with: @rent_unit.name
    click_on "Create Rent unit"

    assert_text "Rent unit was successfully created"
    click_on "Back"
  end

  test "updating a Rent unit" do
    visit rent_units_url
    click_on "Edit", match: :first

    fill_in "Name", with: @rent_unit.name
    click_on "Update Rent unit"

    assert_text "Rent unit was successfully updated"
    click_on "Back"
  end

  test "destroying a Rent unit" do
    visit rent_units_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rent unit was successfully destroyed"
  end
end
