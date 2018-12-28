require 'test_helper'

class StationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @station = stations(:one)
  end

  test "should get index" do
    get stations_url
    assert_response :success
  end

  test "should get new" do
    get new_station_url
    assert_response :success
  end

  test "should create station" do
    assert_difference('Station.count') do
      post stations_url, params: { station: { city_id: @station.city_id, map: @station.map, name1: @station.name1, name2: @station.name2, name3: @station.name3, prefecture_id: @station.prefecture_id, train_route1: @station.train_route1, train_route2: @station.train_route2 } }
    end

    assert_redirected_to station_url(Station.last)
  end

  test "should show station" do
    get station_url(@station)
    assert_response :success
  end

  test "should get edit" do
    get edit_station_url(@station)
    assert_response :success
  end

  test "should update station" do
    patch station_url(@station), params: { station: { city_id: @station.city_id, map: @station.map, name1: @station.name1, name2: @station.name2, name3: @station.name3, prefecture_id: @station.prefecture_id, train_route1: @station.train_route1, train_route2: @station.train_route2 } }
    assert_redirected_to station_url(@station)
  end

  test "should destroy station" do
    assert_difference('Station.count', -1) do
      delete station_url(@station)
    end

    assert_redirected_to stations_url
  end
end
