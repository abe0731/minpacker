require 'test_helper'

class InfomationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @infomation = infomations(:one)
  end

  test "should get index" do
    get infomations_url
    assert_response :success
  end

  test "should get new" do
    get new_infomation_url
    assert_response :success
  end

  test "should create infomation" do
    assert_difference('Infomation.count') do
      post infomations_url, params: { infomation: { info_type: @infomation.info_type, value: @infomation.value } }
    end

    assert_redirected_to infomation_url(Infomation.last)
  end

  test "should show infomation" do
    get infomation_url(@infomation)
    assert_response :success
  end

  test "should get edit" do
    get edit_infomation_url(@infomation)
    assert_response :success
  end

  test "should update infomation" do
    patch infomation_url(@infomation), params: { infomation: { info_type: @infomation.info_type, value: @infomation.value } }
    assert_redirected_to infomation_url(@infomation)
  end

  test "should destroy infomation" do
    assert_difference('Infomation.count', -1) do
      delete infomation_url(@infomation)
    end

    assert_redirected_to infomations_url
  end
end
