require "application_system_test_case"

class MedalsTest < ApplicationSystemTestCase
  setup do
    @medal = medals(:one)
  end

  test "visiting the index" do
    visit medals_url
    assert_selector "h1", text: "Medals"
  end

  test "creating a Medal" do
    visit medals_url
    click_on "New Medal"

    fill_in "Bronze", with: @medal.bronze
    fill_in "Gold", with: @medal.gold
    fill_in "Nation", with: @medal.nation
    fill_in "Rank", with: @medal.rank
    fill_in "Silver", with: @medal.silver
    fill_in "Total", with: @medal.total
    click_on "Create Medal"

    assert_text "Medal was successfully created"
    click_on "Back"
  end

  test "updating a Medal" do
    visit medals_url
    click_on "Edit", match: :first

    fill_in "Bronze", with: @medal.bronze
    fill_in "Gold", with: @medal.gold
    fill_in "Nation", with: @medal.nation
    fill_in "Rank", with: @medal.rank
    fill_in "Silver", with: @medal.silver
    fill_in "Total", with: @medal.total
    click_on "Update Medal"

    assert_text "Medal was successfully updated"
    click_on "Back"
  end

  test "destroying a Medal" do
    visit medals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Medal was successfully destroyed"
  end
end
