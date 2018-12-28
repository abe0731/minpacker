require "application_system_test_case"

class CitiesTest < ApplicationSystemTestCase
  setup do
    @city = cities(:one)
  end

  test "visiting the index" do
    visit cities_url
    assert_selector "h1", text: "Cities"
  end

  test "creating a City" do
    visit cities_url
    click_on "New City"

    fill_in "Map", with: @city.map
    fill_in "Name1", with: @city.name1
    fill_in "Name2", with: @city.name2
    fill_in "Name3", with: @city.name3
    fill_in "Prefecture", with: @city.prefecture_id
    click_on "Create City"

    assert_text "City was successfully created"
    click_on "Back"
  end

  test "updating a City" do
    visit cities_url
    click_on "Edit", match: :first

    fill_in "Map", with: @city.map
    fill_in "Name1", with: @city.name1
    fill_in "Name2", with: @city.name2
    fill_in "Name3", with: @city.name3
    fill_in "Prefecture", with: @city.prefecture_id
    click_on "Update City"

    assert_text "City was successfully updated"
    click_on "Back"
  end

  test "destroying a City" do
    visit cities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "City was successfully destroyed"
  end
end
