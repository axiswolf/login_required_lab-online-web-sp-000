class SessionsController < ApplicationController

  def create
    if current_user.nil? || current_user.empty?
    # redirects to login page if :name is nil
    # redirects to login page if :name is empty
      redirect_to '/login'
    else
    # sets session[:name] if :name is given
    session[:name] = params[:name]
    end
  end

  def destroy
    if params[:name].nil?
      session[:name]
    else
      session.destroy :name
    end
  end

end
