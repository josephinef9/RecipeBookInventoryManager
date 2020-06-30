class SessionsController < ApplicationController
  def new
    @manager = Manager.new
  end

  def create
    if (@manager = Manager.find_by(name: params[:manager][:name]))
      authenticated = @manager.authenticate(params[:manager][:password])
      if authenticated
        session[:user_id] = @manager.id

        redirect_to manager_path(@manager)
      else
        redirect_to signin_path
      end
    else
      redirect_to root_path
    end
  end

  def destroy
    session.clear
    redirect_to root_path
  end
end
