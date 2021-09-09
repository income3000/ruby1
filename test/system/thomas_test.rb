require "application_system_test_case"

class ThomasTest < ApplicationSystemTestCase
  setup do
    @thoma = thomas(:one)
  end

  test "visiting the index" do
    visit thomas_url
    assert_selector "h1", text: "Thomas"
  end

  test "creating a Thoma" do
    visit thomas_url
    click_on "New Thoma"

    fill_in "Age", with: @thoma.age
    fill_in "First name", with: @thoma.first_name
    fill_in "Last name", with: @thoma.last_name
    fill_in "Url", with: @thoma.url
    click_on "Create Thoma"

    assert_text "Thoma was successfully created"
    click_on "Back"
  end

  test "updating a Thoma" do
    visit thomas_url
    click_on "Edit", match: :first

    fill_in "Age", with: @thoma.age
    fill_in "First name", with: @thoma.first_name
    fill_in "Last name", with: @thoma.last_name
    fill_in "Url", with: @thoma.url
    click_on "Update Thoma"

    assert_text "Thoma was successfully updated"
    click_on "Back"
  end

  test "destroying a Thoma" do
    visit thomas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Thoma was successfully destroyed"
  end
end
