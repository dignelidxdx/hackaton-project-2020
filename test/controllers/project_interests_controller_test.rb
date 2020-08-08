require 'test_helper'

class ProjectInterestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project_interest = project_interests(:one)
  end

  test "should get index" do
    get project_interests_url
    assert_response :success
  end

  test "should get new" do
    get new_project_interest_url
    assert_response :success
  end

  test "should create project_interest" do
    assert_difference('ProjectInterest.count') do
      post project_interests_url, params: { project_interest: { favorite: @project_interest.favorite, interest: @project_interest.interest, project_id: @project_interest.project_id, status: @project_interest.status, user_id: @project_interest.user_id } }
    end

    assert_redirected_to project_interest_url(ProjectInterest.last)
  end

  test "should show project_interest" do
    get project_interest_url(@project_interest)
    assert_response :success
  end

  test "should get edit" do
    get edit_project_interest_url(@project_interest)
    assert_response :success
  end

  test "should update project_interest" do
    patch project_interest_url(@project_interest), params: { project_interest: { favorite: @project_interest.favorite, interest: @project_interest.interest, project_id: @project_interest.project_id, status: @project_interest.status, user_id: @project_interest.user_id } }
    assert_redirected_to project_interest_url(@project_interest)
  end

  test "should destroy project_interest" do
    assert_difference('ProjectInterest.count', -1) do
      delete project_interest_url(@project_interest)
    end

    assert_redirected_to project_interests_url
  end
end
