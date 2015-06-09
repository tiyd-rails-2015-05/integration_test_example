require 'test_helper'

class TeachersControllerTest < ActionController::TestCase
  setup do
    @parent = parents(:one)
    bill = Teacher.create!(name: "bill", email: "bill@bill", password: "bill")
    session[:teacher_id] = bill.id
  end

  test "should get edit" do
    get :edit
    assert_response :success
  end

end
