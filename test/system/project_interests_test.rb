require "application_system_test_case"

class ProjectInterestsTest < ApplicationSystemTestCase
  setup do
    @project_interest = project_interests(:one)
  end

  test "visiting the index" do
    visit project_interests_url
    assert_selector "h1", text: "Project Interests"
  end

  test "creating a Project interest" do
    visit project_interests_url
    click_on "New Project Interest"

    check "Favorite" if @project_interest.favorite
    check "Interest" if @project_interest.interest
    fill_in "Project", with: @project_interest.project_id
    fill_in "Status", with: @project_interest.status
    fill_in "User", with: @project_interest.user_id
    click_on "Create Project interest"

    assert_text "Project interest was successfully created"
    click_on "Back"
  end

  test "updating a Project interest" do
    visit project_interests_url
    click_on "Edit", match: :first

    check "Favorite" if @project_interest.favorite
    check "Interest" if @project_interest.interest
    fill_in "Project", with: @project_interest.project_id
    fill_in "Status", with: @project_interest.status
    fill_in "User", with: @project_interest.user_id
    click_on "Update Project interest"

    assert_text "Project interest was successfully updated"
    click_on "Back"
  end

  test "destroying a Project interest" do
    visit project_interests_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Project interest was successfully destroyed"
  end
end
