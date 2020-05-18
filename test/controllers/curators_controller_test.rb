require 'test_helper'

class CuratorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @curator = curators(:one)
  end

  test "should get index" do
    get curators_url
    assert_response :success
  end

  test "should get new" do
    get new_curator_url
    assert_response :success
  end

  test "should create curator" do
    assert_difference('Curator.count') do
      post curators_url, params: { curator: { about: @curator.about, cover: @curator.cover, name: @curator.name } }
    end

    assert_redirected_to curator_url(Curator.last)
  end

  test "should show curator" do
    get curator_url(@curator)
    assert_response :success
  end

  test "should get edit" do
    get edit_curator_url(@curator)
    assert_response :success
  end

  test "should update curator" do
    patch curator_url(@curator), params: { curator: { about: @curator.about, cover: @curator.cover, name: @curator.name } }
    assert_redirected_to curator_url(@curator)
  end

  test "should destroy curator" do
    assert_difference('Curator.count', -1) do
      delete curator_url(@curator)
    end

    assert_redirected_to curators_url
  end
end
