class ApplicationController < ActionController::Base
  before_action :require_login, :except=>[:new]

  def after_sign_in_path_for(_resource)
    home_index_path
  end

  def after_sign_out_path_for(_resource_or_scope)
    new_user_session_path
  end

  private

  def require_login
    redirect_to new_user_session_url unless current_user
  end

end
