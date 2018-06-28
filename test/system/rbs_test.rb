require "application_system_test_case"

class RbsTest < ApplicationSystemTestCase
  setup do
    @rb = rbs(:one)
  end

  test "visiting the index" do
    visit rbs_url
    assert_selector "h1", text: "Rbs"
  end

  test "creating a Rb" do
    visit rbs_url
    click_on "New Rb"

    fill_in "Mb", with: @rb.mb
    fill_in "Ms", with: @rb.ms
    click_on "Create Rb"

    assert_text "Rb was successfully created"
    click_on "Back"
  end

  test "updating a Rb" do
    visit rbs_url
    click_on "Edit", match: :first

    fill_in "Mb", with: @rb.mb
    fill_in "Ms", with: @rb.ms
    click_on "Update Rb"

    assert_text "Rb was successfully updated"
    click_on "Back"
  end

  test "destroying a Rb" do
    visit rbs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rb was successfully destroyed"
  end
end
