require "application_system_test_case"

class PrefecturesTest < ApplicationSystemTestCase
  setup do
    @prefecture = prefectures(:one)
  end

  test "visiting the index" do
    visit prefectures_url
    assert_selector "h1", text: "Prefectures"
  end

  test "creating a Prefecture" do
    visit prefectures_url
    click_on "New Prefecture"

    fill_in "Map", with: @prefecture.map
    fill_in "Name1", with: @prefecture.name1
    fill_in "Name2", with: @prefecture.name2
    fill_in "Name3", with: @prefecture.name3
    click_on "Create Prefecture"

    assert_text "Prefecture was successfully created"
    click_on "Back"
  end

  test "updating a Prefecture" do
    visit prefectures_url
    click_on "Edit", match: :first

    fill_in "Map", with: @prefecture.map
    fill_in "Name1", with: @prefecture.name1
    fill_in "Name2", with: @prefecture.name2
    fill_in "Name3", with: @prefecture.name3
    click_on "Update Prefecture"

    assert_text "Prefecture was successfully updated"
    click_on "Back"
  end

  test "destroying a Prefecture" do
    visit prefectures_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Prefecture was successfully destroyed"
  end
end
