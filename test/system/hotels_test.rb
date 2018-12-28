require "application_system_test_case"

class HotelsTest < ApplicationSystemTestCase
  setup do
    @hotel = hotels(:one)
  end

  test "visiting the index" do
    visit hotels_url
    assert_selector "h1", text: "Hotels"
  end

  test "creating a Hotel" do
    visit hotels_url
    click_on "New Hotel"

    fill_in "About1", with: @hotel.about1
    fill_in "About2", with: @hotel.about2
    fill_in "About3", with: @hotel.about3
    fill_in "About4", with: @hotel.about4
    fill_in "About5", with: @hotel.about5
    fill_in "Address", with: @hotel.address
    fill_in "Airport", with: @hotel.airport_id
    fill_in "City", with: @hotel.city_id
    fill_in "Key", with: @hotel.key
    fill_in "Mail", with: @hotel.mail
    fill_in "Map", with: @hotel.map
    fill_in "Name1", with: @hotel.name1
    fill_in "Name2", with: @hotel.name2
    fill_in "Name3", with: @hotel.name3
    fill_in "Prefecture", with: @hotel.prefecture_id
    fill_in "Publish Flg", with: @hotel.publish_flg
    fill_in "Station", with: @hotel.station_id
    fill_in "Stop Flg", with: @hotel.stop_flg
    fill_in "Tel", with: @hotel.tel
    fill_in "Url", with: @hotel.url
    click_on "Create Hotel"

    assert_text "Hotel was successfully created"
    click_on "Back"
  end

  test "updating a Hotel" do
    visit hotels_url
    click_on "Edit", match: :first

    fill_in "About1", with: @hotel.about1
    fill_in "About2", with: @hotel.about2
    fill_in "About3", with: @hotel.about3
    fill_in "About4", with: @hotel.about4
    fill_in "About5", with: @hotel.about5
    fill_in "Address", with: @hotel.address
    fill_in "Airport", with: @hotel.airport_id
    fill_in "City", with: @hotel.city_id
    fill_in "Key", with: @hotel.key
    fill_in "Mail", with: @hotel.mail
    fill_in "Map", with: @hotel.map
    fill_in "Name1", with: @hotel.name1
    fill_in "Name2", with: @hotel.name2
    fill_in "Name3", with: @hotel.name3
    fill_in "Prefecture", with: @hotel.prefecture_id
    fill_in "Publish Flg", with: @hotel.publish_flg
    fill_in "Station", with: @hotel.station_id
    fill_in "Stop Flg", with: @hotel.stop_flg
    fill_in "Tel", with: @hotel.tel
    fill_in "Url", with: @hotel.url
    click_on "Update Hotel"

    assert_text "Hotel was successfully updated"
    click_on "Back"
  end

  test "destroying a Hotel" do
    visit hotels_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hotel was successfully destroyed"
  end
end
