require "application_system_test_case"

class CuratorOfExhibitionsTest < ApplicationSystemTestCase
  setup do
    @curator_of_exhibition = curator_of_exhibitions(:one)
  end

  test "visiting the index" do
    visit curator_of_exhibitions_url
    assert_selector "h1", text: "Curator Of Exhibitions"
  end

  test "creating a Curator of exhibition" do
    visit curator_of_exhibitions_url
    click_on "New Curator Of Exhibition"

    fill_in "About", with: @curator_of_exhibition.about
    fill_in "Cover", with: @curator_of_exhibition.cover
    fill_in "Name", with: @curator_of_exhibition.name
    click_on "Create Curator of exhibition"

    assert_text "Curator of exhibition was successfully created"
    click_on "Back"
  end

  test "updating a Curator of exhibition" do
    visit curator_of_exhibitions_url
    click_on "Edit", match: :first

    fill_in "About", with: @curator_of_exhibition.about
    fill_in "Cover", with: @curator_of_exhibition.cover
    fill_in "Name", with: @curator_of_exhibition.name
    click_on "Update Curator of exhibition"

    assert_text "Curator of exhibition was successfully updated"
    click_on "Back"
  end

  test "destroying a Curator of exhibition" do
    visit curator_of_exhibitions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Curator of exhibition was successfully destroyed"
  end
end
