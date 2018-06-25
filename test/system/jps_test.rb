require "application_system_test_case"

class JpsTest < ApplicationSystemTestCase
  setup do
    @jp = jps(:one)
  end

  test "visiting the index" do
    visit jps_url
    assert_selector "h1", text: "Jps"
  end

  test "creating a Jp" do
    visit jps_url
    click_on "New Jp"

    fill_in "Ans", with: @jp.ans
    fill_in "Point", with: @jp.point
    fill_in "Ques", with: @jp.ques
    click_on "Create Jp"

    assert_text "Jp was successfully created"
    click_on "Back"
  end

  test "updating a Jp" do
    visit jps_url
    click_on "Edit", match: :first

    fill_in "Ans", with: @jp.ans
    fill_in "Point", with: @jp.point
    fill_in "Ques", with: @jp.ques
    click_on "Update Jp"

    assert_text "Jp was successfully updated"
    click_on "Back"
  end

  test "destroying a Jp" do
    visit jps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Jp was successfully destroyed"
  end
end
