require "application_system_test_case"

class StationsTest < ApplicationSystemTestCase
  setup do
    @station = stations(:one)
  end

  test "visiting the index" do
    visit stations_url
    assert_selector "h1", text: "Stations"
  end

  test "creating a Station" do
    visit stations_url
    click_on "New Station"

    fill_in "City", with: @station.city_id
    fill_in "Map", with: @station.map
    fill_in "Name1", with: @station.name1
    fill_in "Name2", with: @station.name2
    fill_in "Name3", with: @station.name3
    fill_in "Prefecture", with: @station.prefecture_id
    fill_in "Train Route1", with: @station.train_route1
    fill_in "Train Route2", with: @station.train_route2
    click_on "Create Station"

    assert_text "Station was successfully created"
    click_on "Back"
  end

  test "updating a Station" do
    visit stations_url
    click_on "Edit", match: :first

    fill_in "City", with: @station.city_id
    fill_in "Map", with: @station.map
    fill_in "Name1", with: @station.name1
    fill_in "Name2", with: @station.name2
    fill_in "Name3", with: @station.name3
    fill_in "Prefecture", with: @station.prefecture_id
    fill_in "Train Route1", with: @station.train_route1
    fill_in "Train Route2", with: @station.train_route2
    click_on "Update Station"

    assert_text "Station was successfully updated"
    click_on "Back"
  end

  test "destroying a Station" do
    visit stations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Station was successfully destroyed"
  end
end
