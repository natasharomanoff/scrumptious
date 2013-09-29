class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_user!
  
  layout :choose_layout


  protected
  
  def choose_layout
  	if devise_controller?
  		"devise"
  	else
  		"application"
  	end
  end

end
