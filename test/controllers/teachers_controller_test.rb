require 'test_helper'

class TeachersControllerTest < ActionController::TestCase
  setup do
    @teacher = teachers(:one)
    session[:teacher_id] = @teacher.id
  end

  test "should get edit" do
    get :edit, id: @teacher
    assert_equal "200", response.code
  end

end
