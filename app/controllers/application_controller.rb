class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  #~ before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    if params[:tour_place] && params[:tour_place][:id].present?
      session[:tour_place] = TourPlace.where(id: params[:tour_place][:id]).first 
    end
    return new_visitor_path
  end

  protected

  #~ def configure_permitted_parameters
    #~ devise_parameter_sanitizer.for(:sign_up) << :user_name
  #~ end

end
