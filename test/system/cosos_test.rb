require "application_system_test_case"

class CososTest < ApplicationSystemTestCase
  setup do
    @coso = cosos(:one)
  end

  test "visiting the index" do
    visit cosos_url
    assert_selector "h1", text: "Cosos"
  end

  test "creating a Coso" do
    visit cosos_url
    click_on "New Coso"

    fill_in "Description", with: @coso.description
    fill_in "Name", with: @coso.name
    fill_in "Number", with: @coso.number
    click_on "Create Coso"

    assert_text "Coso was successfully created"
    click_on "Back"
  end

  test "updating a Coso" do
    visit cosos_url
    click_on "Edit", match: :first

    fill_in "Description", with: @coso.description
    fill_in "Name", with: @coso.name
    fill_in "Number", with: @coso.number
    click_on "Update Coso"

    assert_text "Coso was successfully updated"
    click_on "Back"
  end

  test "destroying a Coso" do
    visit cosos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Coso was successfully destroyed"
  end
end
