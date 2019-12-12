class SessionsController < ApplicationController

  def create
    # redirects to login page if :name is nil
    # redirects to login page if :name is empty
    # sets session[:name] if :name is given

  end

  def destroy
    if params[:name].nil?
      session[:name] = params[:name]
    else
      session.destroy :name
    end
  end

end
