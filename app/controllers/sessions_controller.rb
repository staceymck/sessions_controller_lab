class SessionsController < ApplicationController

  # GET /login
  def new
  end

  # POST /login
  def create
    if params[:name].blank?
      redirect_to login_path
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  # POST /logout
  def destroy
    session.delete :name
    redirect_to '/'
  end
end