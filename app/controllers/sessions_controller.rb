class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by username: params[:username]
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to tasks_path, notice: "Login successful"
    else
      redirect_to :back, notice: "username and/or passowrd mismatch"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to :root
  end
end