class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  def index

  end

  def current_user
	#complete this method
  end

end
