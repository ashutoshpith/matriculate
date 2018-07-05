require "application_system_test_case"

class Java::JprogressesTest < ApplicationSystemTestCase
  setup do
    @java_jprogress = java_jprogresses(:one)
  end

  test "visiting the index" do
    visit java_jprogresses_url
    assert_selector "h1", text: "Java/Jprogresses"
  end

  test "creating a Jprogress" do
    visit java_jprogresses_url
    click_on "New Java/Jprogress"

    fill_in "Ans", with: @java_jprogress.ans
    fill_in "Heading", with: @java_jprogress.heading
    fill_in "Point", with: @java_jprogress.point
    fill_in "Ques", with: @java_jprogress.ques
    click_on "Create Jprogress"

    assert_text "Jprogress was successfully created"
    click_on "Back"
  end

  test "updating a Jprogress" do
    visit java_jprogresses_url
    click_on "Edit", match: :first

    fill_in "Ans", with: @java_jprogress.ans
    fill_in "Heading", with: @java_jprogress.heading
    fill_in "Point", with: @java_jprogress.point
    fill_in "Ques", with: @java_jprogress.ques
    click_on "Update Jprogress"

    assert_text "Jprogress was successfully updated"
    click_on "Back"
  end

  test "destroying a Jprogress" do
    visit java_jprogresses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Jprogress was successfully destroyed"
  end
end
