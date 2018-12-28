require 'test_helper'

class RentUnitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rent_unit = rent_units(:one)
  end

  test "should get index" do
    get rent_units_url
    assert_response :success
  end

  test "should get new" do
    get new_rent_unit_url
    assert_response :success
  end

  test "should create rent_unit" do
    assert_difference('RentUnit.count') do
      post rent_units_url, params: { rent_unit: { name: @rent_unit.name } }
    end

    assert_redirected_to rent_unit_url(RentUnit.last)
  end

  test "should show rent_unit" do
    get rent_unit_url(@rent_unit)
    assert_response :success
  end

  test "should get edit" do
    get edit_rent_unit_url(@rent_unit)
    assert_response :success
  end

  test "should update rent_unit" do
    patch rent_unit_url(@rent_unit), params: { rent_unit: { name: @rent_unit.name } }
    assert_redirected_to rent_unit_url(@rent_unit)
  end

  test "should destroy rent_unit" do
    assert_difference('RentUnit.count', -1) do
      delete rent_unit_url(@rent_unit)
    end

    assert_redirected_to rent_units_url
  end
end
