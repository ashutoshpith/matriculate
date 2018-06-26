require "application_system_test_case"

class JlsTest < ApplicationSystemTestCase
  setup do
    @jl = jls(:one)
  end

  test "visiting the index" do
    visit jls_url
    assert_selector "h1", text: "Jls"
  end

  test "creating a Jl" do
    visit jls_url
    click_on "New Jl"

    fill_in "Ans", with: @jl.ans
    fill_in "Input", with: @jl.input
    fill_in "Output", with: @jl.output
    fill_in "Point", with: @jl.point
    fill_in "Ques", with: @jl.ques
    click_on "Create Jl"

    assert_text "Jl was successfully created"
    click_on "Back"
  end

  test "updating a Jl" do
    visit jls_url
    click_on "Edit", match: :first

    fill_in "Ans", with: @jl.ans
    fill_in "Input", with: @jl.input
    fill_in "Output", with: @jl.output
    fill_in "Point", with: @jl.point
    fill_in "Ques", with: @jl.ques
    click_on "Update Jl"

    assert_text "Jl was successfully updated"
    click_on "Back"
  end

  test "destroying a Jl" do
    visit jls_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Jl was successfully destroyed"
  end
end
