class SessionsController < ApplicationController
  def login
    if request.post?
      teacher = Teacher.find_by_email(params[:email])
      if teacher && teacher.authenticate(params[:password])
        session[:teacher_id] = teacher.id
        redirect_to parents_path, notice: "You've successfully logged in."
      else
        flash.now[:notice] = "Incorrect password, try agian."
      end
    end
    # @teacher = Teacher.find(params[:id])
    # session[:name] = @teacher.name
  end

  def logout
    session[:teacher_id] = nil
    redirect_to sessions_login_path, notice: "Logged Out."
  end
end
