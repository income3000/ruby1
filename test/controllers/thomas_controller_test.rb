require "test_helper"

class ThomasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @thoma = thomas(:one)
  end

  test "should get index" do
    get thomas_url
    assert_response :success
  end

  test "should get new" do
    get new_thoma_url
    assert_response :success
  end

  test "should create thoma" do
    assert_difference('Thoma.count') do
      post thomas_url, params: { thoma: { age: @thoma.age, first_name: @thoma.first_name, last_name: @thoma.last_name, url: @thoma.url } }
    end

    assert_redirected_to thoma_url(Thoma.last)
  end

  test "should show thoma" do
    get thoma_url(@thoma)
    assert_response :success
  end

  test "should get edit" do
    get edit_thoma_url(@thoma)
    assert_response :success
  end

  test "should update thoma" do
    patch thoma_url(@thoma), params: { thoma: { age: @thoma.age, first_name: @thoma.first_name, last_name: @thoma.last_name, url: @thoma.url } }
    assert_redirected_to thoma_url(@thoma)
  end

  test "should destroy thoma" do
    assert_difference('Thoma.count', -1) do
      delete thoma_url(@thoma)
    end

    assert_redirected_to thomas_url
  end
end
