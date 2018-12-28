require "application_system_test_case"

class StayUnitsTest < ApplicationSystemTestCase
  setup do
    @stay_unit = stay_units(:one)
  end

  test "visiting the index" do
    visit stay_units_url
    assert_selector "h1", text: "Stay Units"
  end

  test "creating a Stay unit" do
    visit stay_units_url
    click_on "New Stay Unit"

    fill_in "Name", with: @stay_unit.name
    click_on "Create Stay unit"

    assert_text "Stay unit was successfully created"
    click_on "Back"
  end

  test "updating a Stay unit" do
    visit stay_units_url
    click_on "Edit", match: :first

    fill_in "Name", with: @stay_unit.name
    click_on "Update Stay unit"

    assert_text "Stay unit was successfully updated"
    click_on "Back"
  end

  test "destroying a Stay unit" do
    visit stay_units_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Stay unit was successfully destroyed"
  end
end
