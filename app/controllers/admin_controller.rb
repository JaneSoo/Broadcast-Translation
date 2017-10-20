class AdminController < ApplicationController
  
  def index
    redirect_to dashboard_index_url
  end

end
