class ManagersController < ApplicationController
  before_action :require_login
  skip_before_action :require_login, only: %i[new create]

  def new
    @manager = Manager.new
  end

  def create
    manager = Manager.create(user_params)
    session[:user_id] = manager.id

    redirect_to manager_path(manager)
  end

  def show
    @manager = Manager.find(params[:id])
    redirect_to root_path unless session[:user_id].present?
  end

private

  def user_params
    params.require(:manager).permit(:name, :password)
  end
end
