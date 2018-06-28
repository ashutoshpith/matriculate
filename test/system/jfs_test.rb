require "application_system_test_case"

class JfsTest < ApplicationSystemTestCase
  setup do
    @jf = jfs(:one)
  end

  test "visiting the index" do
    visit jfs_url
    assert_selector "h1", text: "Jfs"
  end

  test "creating a Jf" do
    visit jfs_url
    click_on "New Jf"

    fill_in "Ans", with: @jf.ans
    fill_in "Heading", with: @jf.heading
    fill_in "Input", with: @jf.input
    fill_in "Output", with: @jf.output
    fill_in "Point", with: @jf.point
    fill_in "Ques", with: @jf.ques
    click_on "Create Jf"

    assert_text "Jf was successfully created"
    click_on "Back"
  end

  test "updating a Jf" do
    visit jfs_url
    click_on "Edit", match: :first

    fill_in "Ans", with: @jf.ans
    fill_in "Heading", with: @jf.heading
    fill_in "Input", with: @jf.input
    fill_in "Output", with: @jf.output
    fill_in "Point", with: @jf.point
    fill_in "Ques", with: @jf.ques
    click_on "Update Jf"

    assert_text "Jf was successfully updated"
    click_on "Back"
  end

  test "destroying a Jf" do
    visit jfs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Jf was successfully destroyed"
  end
end
