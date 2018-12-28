require 'test_helper'

class HotelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hotel = hotels(:one)
  end

  test "should get index" do
    get hotels_url
    assert_response :success
  end

  test "should get new" do
    get new_hotel_url
    assert_response :success
  end

  test "should create hotel" do
    assert_difference('Hotel.count') do
      post hotels_url, params: { hotel: { about1: @hotel.about1, about2: @hotel.about2, about3: @hotel.about3, about4: @hotel.about4, about5: @hotel.about5, address: @hotel.address, airport_id: @hotel.airport_id, city_id: @hotel.city_id, key: @hotel.key, mail: @hotel.mail, map: @hotel.map, name1: @hotel.name1, name2: @hotel.name2, name3: @hotel.name3, prefecture_id: @hotel.prefecture_id, publish_flg: @hotel.publish_flg, station_id: @hotel.station_id, stop_flg: @hotel.stop_flg, tel: @hotel.tel, url: @hotel.url } }
    end

    assert_redirected_to hotel_url(Hotel.last)
  end

  test "should show hotel" do
    get hotel_url(@hotel)
    assert_response :success
  end

  test "should get edit" do
    get edit_hotel_url(@hotel)
    assert_response :success
  end

  test "should update hotel" do
    patch hotel_url(@hotel), params: { hotel: { about1: @hotel.about1, about2: @hotel.about2, about3: @hotel.about3, about4: @hotel.about4, about5: @hotel.about5, address: @hotel.address, airport_id: @hotel.airport_id, city_id: @hotel.city_id, key: @hotel.key, mail: @hotel.mail, map: @hotel.map, name1: @hotel.name1, name2: @hotel.name2, name3: @hotel.name3, prefecture_id: @hotel.prefecture_id, publish_flg: @hotel.publish_flg, station_id: @hotel.station_id, stop_flg: @hotel.stop_flg, tel: @hotel.tel, url: @hotel.url } }
    assert_redirected_to hotel_url(@hotel)
  end

  test "should destroy hotel" do
    assert_difference('Hotel.count', -1) do
      delete hotel_url(@hotel)
    end

    assert_redirected_to hotels_url
  end
end
