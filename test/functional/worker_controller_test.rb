require 'test_helper'

class WorkerControllerTest < ActionController::TestCase
  test "should get hours" do
    get :hours
    assert_response :success
  end

  test "should get items" do
    get :items
    assert_response :success
  end

  test "should get payslips" do
    get :payslips
    assert_response :success
  end

end
