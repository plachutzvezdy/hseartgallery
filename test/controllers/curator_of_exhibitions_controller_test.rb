require 'test_helper'

class CuratorOfExhibitionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @curator_of_exhibition = curator_of_exhibitions(:one)
  end

  test "should get index" do
    get curator_of_exhibitions_url
    assert_response :success
  end

  test "should get new" do
    get new_curator_of_exhibition_url
    assert_response :success
  end

  test "should create curator_of_exhibition" do
    assert_difference('CuratorOfExhibition.count') do
      post curator_of_exhibitions_url, params: { curator_of_exhibition: { about: @curator_of_exhibition.about, cover: @curator_of_exhibition.cover, name: @curator_of_exhibition.name } }
    end

    assert_redirected_to curator_of_exhibition_url(CuratorOfExhibition.last)
  end

  test "should show curator_of_exhibition" do
    get curator_of_exhibition_url(@curator_of_exhibition)
    assert_response :success
  end

  test "should get edit" do
    get edit_curator_of_exhibition_url(@curator_of_exhibition)
    assert_response :success
  end

  test "should update curator_of_exhibition" do
    patch curator_of_exhibition_url(@curator_of_exhibition), params: { curator_of_exhibition: { about: @curator_of_exhibition.about, cover: @curator_of_exhibition.cover, name: @curator_of_exhibition.name } }
    assert_redirected_to curator_of_exhibition_url(@curator_of_exhibition)
  end

  test "should destroy curator_of_exhibition" do
    assert_difference('CuratorOfExhibition.count', -1) do
      delete curator_of_exhibition_url(@curator_of_exhibition)
    end

    assert_redirected_to curator_of_exhibitions_url
  end
end
