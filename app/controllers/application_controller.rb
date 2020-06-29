class ApplicationController < ActionController::Base
  def current_user
    @current_user ||= Manager.find_by(id: session[:user_id])
  end
end
