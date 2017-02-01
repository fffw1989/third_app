require 'test_helper'

class FreedomsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @freedom = freedoms(:one)
  end

  test "should get index" do
    get freedoms_url
    assert_response :success
  end

  test "should get new" do
    get new_freedom_url
    assert_response :success
  end

  test "should create freedom" do
    assert_difference('Freedom.count') do
      post freedoms_url, params: { freedom: { number: @freedom.number, title: @freedom.title } }
    end

    assert_redirected_to freedom_url(Freedom.last)
  end

  test "should show freedom" do
    get freedom_url(@freedom)
    assert_response :success
  end

  test "should get edit" do
    get edit_freedom_url(@freedom)
    assert_response :success
  end

  test "should update freedom" do
    patch freedom_url(@freedom), params: { freedom: { number: @freedom.number, title: @freedom.title } }
    assert_redirected_to freedom_url(@freedom)
  end

  test "should destroy freedom" do
    assert_difference('Freedom.count', -1) do
      delete freedom_url(@freedom)
    end

    assert_redirected_to freedoms_url
  end
end
