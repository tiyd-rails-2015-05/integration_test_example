class TeachersController < ApplicationController
  before_action :set_teacher, only: [:edit, :update]

  def edit
  end

  def update
    respond_to do |format|
      if @teacher.update(teacher_params)
        format.html { redirect_to parents_path, notice: 'Teacher was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teacher
      @teacher = Teacher.find_by_id(session[:teacher_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def teacher_params
      params.require(:teacher).permit(:name, :email, :password)
    end
end
