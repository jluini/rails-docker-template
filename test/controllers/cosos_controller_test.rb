require 'test_helper'

class CososControllerTest < ActionDispatch::IntegrationTest
  setup do
    @coso = cosos(:one)
  end

  test "should get index" do
    get cosos_url
    assert_response :success
  end

  test "should get new" do
    get new_coso_url
    assert_response :success
  end

  test "should create coso" do
    assert_difference('Coso.count') do
      post cosos_url, params: { coso: { description: @coso.description, name: @coso.name, number: @coso.number } }
    end

    assert_redirected_to coso_url(Coso.last)
  end

  test "should show coso" do
    get coso_url(@coso)
    assert_response :success
  end

  test "should get edit" do
    get edit_coso_url(@coso)
    assert_response :success
  end

  test "should update coso" do
    patch coso_url(@coso), params: { coso: { description: @coso.description, name: @coso.name, number: @coso.number } }
    assert_redirected_to coso_url(@coso)
  end

  test "should destroy coso" do
    assert_difference('Coso.count', -1) do
      delete coso_url(@coso)
    end

    assert_redirected_to cosos_url
  end
end
