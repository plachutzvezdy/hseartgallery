require "application_system_test_case"

class CuratorsTest < ApplicationSystemTestCase
  setup do
    @curator = curators(:one)
  end

  test "visiting the index" do
    visit curators_url
    assert_selector "h1", text: "Curators"
  end

  test "creating a Curator" do
    visit curators_url
    click_on "New Curator"

    fill_in "About", with: @curator.about
    fill_in "Cover", with: @curator.cover
    fill_in "Name", with: @curator.name
    click_on "Create Curator"

    assert_text "Curator was successfully created"
    click_on "Back"
  end

  test "updating a Curator" do
    visit curators_url
    click_on "Edit", match: :first

    fill_in "About", with: @curator.about
    fill_in "Cover", with: @curator.cover
    fill_in "Name", with: @curator.name
    click_on "Update Curator"

    assert_text "Curator was successfully updated"
    click_on "Back"
  end

  test "destroying a Curator" do
    visit curators_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Curator was successfully destroyed"
  end
end
