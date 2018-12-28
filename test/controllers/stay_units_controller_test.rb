require 'test_helper'

class StayUnitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stay_unit = stay_units(:one)
  end

  test "should get index" do
    get stay_units_url
    assert_response :success
  end

  test "should get new" do
    get new_stay_unit_url
    assert_response :success
  end

  test "should create stay_unit" do
    assert_difference('StayUnit.count') do
      post stay_units_url, params: { stay_unit: { name: @stay_unit.name } }
    end

    assert_redirected_to stay_unit_url(StayUnit.last)
  end

  test "should show stay_unit" do
    get stay_unit_url(@stay_unit)
    assert_response :success
  end

  test "should get edit" do
    get edit_stay_unit_url(@stay_unit)
    assert_response :success
  end

  test "should update stay_unit" do
    patch stay_unit_url(@stay_unit), params: { stay_unit: { name: @stay_unit.name } }
    assert_redirected_to stay_unit_url(@stay_unit)
  end

  test "should destroy stay_unit" do
    assert_difference('StayUnit.count', -1) do
      delete stay_unit_url(@stay_unit)
    end

    assert_redirected_to stay_units_url
  end
end
