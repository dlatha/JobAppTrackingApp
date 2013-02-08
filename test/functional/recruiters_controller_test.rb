require 'test_helper'

class RecruitersControllerTest < ActionController::TestCase
  setup do
    @recruiter = recruiters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:recruiters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create recruiter" do
    assert_difference('Recruiter.count') do
      post :create, recruiter: { company_id: @recruiter.company_id, email: @recruiter.email, feedback: @recruiter.feedback, recruiterName: @recruiter.recruiterName, scheduledDate: @recruiter.scheduledDate, scheduledTime: @recruiter.scheduledTime, telephone: @recruiter.telephone }
    end

    assert_redirected_to recruiter_path(assigns(:recruiter))
  end

  test "should show recruiter" do
    get :show, id: @recruiter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @recruiter
    assert_response :success
  end

  test "should update recruiter" do
    put :update, id: @recruiter, recruiter: { company_id: @recruiter.company_id, email: @recruiter.email, feedback: @recruiter.feedback, recruiterName: @recruiter.recruiterName, scheduledDate: @recruiter.scheduledDate, scheduledTime: @recruiter.scheduledTime, telephone: @recruiter.telephone }
    assert_redirected_to recruiter_path(assigns(:recruiter))
  end

  test "should destroy recruiter" do
    assert_difference('Recruiter.count', -1) do
      delete :destroy, id: @recruiter
    end

    assert_redirected_to recruiters_path
  end
end
