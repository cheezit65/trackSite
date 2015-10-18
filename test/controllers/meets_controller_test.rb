require 'test_helper'

class MeetsControllerTest < ActionController::TestCase
  setup do
    @meet = meets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:meets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create meet" do
    assert_difference('Meet.count') do
      post :create, meet: {  athleteNum: @meet. athleteNum, event1: @meet.event1, event2: @meet.event2, event3: @meet.event3 }
    end

    assert_redirected_to meet_path(assigns(:meet))
  end

  test "should show meet" do
    get :show, id: @meet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @meet
    assert_response :success
  end

  test "should update meet" do
    patch :update, id: @meet, meet: {  athleteNum: @meet. athleteNum, event1: @meet.event1, event2: @meet.event2, event3: @meet.event3 }
    assert_redirected_to meet_path(assigns(:meet))
  end

  test "should destroy meet" do
    assert_difference('Meet.count', -1) do
      delete :destroy, id: @meet
    end

    assert_redirected_to meets_path
  end
end
