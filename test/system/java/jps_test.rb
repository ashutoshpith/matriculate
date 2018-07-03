require "application_system_test_case"

class Java::JpsTest < ApplicationSystemTestCase
  setup do
    @java_jp = java_jps(:one)
  end

  test "visiting the index" do
    visit java_jps_url
    assert_selector "h1", text: "Java/Jps"
  end

  test "creating a Jp" do
    visit java_jps_url
    click_on "New Java/Jp"

    fill_in "Ans", with: @java_jp.ans
    fill_in "Heading", with: @java_jp.heading
    fill_in "Input", with: @java_jp.input
    fill_in "Output", with: @java_jp.output
    fill_in "Point", with: @java_jp.point
    fill_in "Ques", with: @java_jp.ques
    click_on "Create Jp"

    assert_text "Jp was successfully created"
    click_on "Back"
  end

  test "updating a Jp" do
    visit java_jps_url
    click_on "Edit", match: :first

    fill_in "Ans", with: @java_jp.ans
    fill_in "Heading", with: @java_jp.heading
    fill_in "Input", with: @java_jp.input
    fill_in "Output", with: @java_jp.output
    fill_in "Point", with: @java_jp.point
    fill_in "Ques", with: @java_jp.ques
    click_on "Update Jp"

    assert_text "Jp was successfully updated"
    click_on "Back"
  end

  test "destroying a Jp" do
    visit java_jps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Jp was successfully destroyed"
  end
end
