class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  def index

  end

  rescue_from CanCan::AccessDenied do |exception|
     redirect_to root_url, notice: exception.message
  end
end
