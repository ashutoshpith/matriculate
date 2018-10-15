require "application_system_test_case"

class JavaquesTest < ApplicationSystemTestCase
  setup do
    @javaque = javaques(:one)
  end

  test "visiting the index" do
    visit javaques_url
    assert_selector "h1", text: "Javaques"
  end

  test "creating a Javaque" do
    visit javaques_url
    click_on "New Javaque"

    fill_in "Answer", with: @javaque.answer
    fill_in "Heading", with: @javaque.heading
    fill_in "Input", with: @javaque.input
    fill_in "Output", with: @javaque.output
    fill_in "Point", with: @javaque.point
    fill_in "Question", with: @javaque.question
    click_on "Create Javaque"

    assert_text "Javaque was successfully created"
    click_on "Back"
  end

  test "updating a Javaque" do
    visit javaques_url
    click_on "Edit", match: :first

    fill_in "Answer", with: @javaque.answer
    fill_in "Heading", with: @javaque.heading
    fill_in "Input", with: @javaque.input
    fill_in "Output", with: @javaque.output
    fill_in "Point", with: @javaque.point
    fill_in "Question", with: @javaque.question
    click_on "Update Javaque"

    assert_text "Javaque was successfully updated"
    click_on "Back"
  end

  test "destroying a Javaque" do
    visit javaques_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Javaque was successfully destroyed"
  end
end
