class RequestsController < ApplicationController
  before_action :set_request, only: [:show, :approve, :reject]

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

  # APPROVE /reqest/1
  def approve
    
    if @request.update(user: current_user)
      @request.approving!
      redirect_to @request, notice: 'Request was successfully approved.'
    else
      redirect_to @request, notice: 'Request was unsuccessfully approved.'
    end
  end

  # REJECT /requests/1
  def reject

    if @request.update(user: current_user)
      @request.rejecting!
      redirect_to @request, notice: 'Request was successfully rejected.'
    else
      redirect_to @request, notice: 'Request was unsuccessfully rejected.'
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
