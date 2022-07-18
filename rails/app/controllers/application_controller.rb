class ApplicationController < ActionController::Base
  before_action :set_current_user

  def set_current_user
    if session[:user_id]
      Current.user = User.find_by(id: session[:user_id])
    end

  end

  rescue_from CanCan::AccessDenied do
    flash[:error] = "you arer not authorized"
  end
end
