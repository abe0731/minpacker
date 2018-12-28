require "application_system_test_case"

class AirportsTest < ApplicationSystemTestCase
  setup do
    @airport = airports(:one)
  end

  test "visiting the index" do
    visit airports_url
    assert_selector "h1", text: "Airports"
  end

  test "creating a Airport" do
    visit airports_url
    click_on "New Airport"

    fill_in "City", with: @airport.city_id
    fill_in "Iata Cd", with: @airport.iata_cd
    fill_in "Map", with: @airport.map
    fill_in "Name1", with: @airport.name1
    fill_in "Name2", with: @airport.name2
    fill_in "Name3", with: @airport.name3
    fill_in "Prefecture", with: @airport.prefecture_id
    click_on "Create Airport"

    assert_text "Airport was successfully created"
    click_on "Back"
  end

  test "updating a Airport" do
    visit airports_url
    click_on "Edit", match: :first

    fill_in "City", with: @airport.city_id
    fill_in "Iata Cd", with: @airport.iata_cd
    fill_in "Map", with: @airport.map
    fill_in "Name1", with: @airport.name1
    fill_in "Name2", with: @airport.name2
    fill_in "Name3", with: @airport.name3
    fill_in "Prefecture", with: @airport.prefecture_id
    click_on "Update Airport"

    assert_text "Airport was successfully updated"
    click_on "Back"
  end

  test "destroying a Airport" do
    visit airports_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Airport was successfully destroyed"
  end
end
