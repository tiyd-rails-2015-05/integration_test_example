require 'test_helper'

class TeachersControllerTest < ActionController::TestCase
  setup do
    @teacher = teachers(:one)
    bill = Teacher.create!(name: "bill", email: "bill@bill", password: "bill")
    session[:teacher_id] = bill.id
  end

  test "should get edit" do
    get :edit, id: @teacher
    assert_response :success
  end

end
