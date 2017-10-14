class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  protect_from_forgery with: :exception

  layout :set_layout

  private

  def set_layout
    devise_controller? ? 'devise' : 'application'
  end
end
