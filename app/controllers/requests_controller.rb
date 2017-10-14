class RequestsController < ApplicationController
  before_action :set_request, only: [:show]

  def index
    @requests = Request.all
  end

  def show
  end

  def create
    @request = Request.new(request_params)

    if @request.save
      redirect_to @request, notice: 'Request was successfully created.'
    else
      render :new
    end
  end

  private
    def set_request
      @request = Request.find(params[:id])
    end

    def request_params
      params.require(:request).permit(:status, :translator_id, :broadcast_room_id)
    end
end
