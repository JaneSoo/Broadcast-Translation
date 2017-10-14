class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  protect_from_forgery with: :exception

  layout :set_layout

  private

    def set_layout
      devise_controller? ? 'devise' : 'application'
    end

    def after_sign_in_path_for(resource)
      dashboard_index
    end
end
