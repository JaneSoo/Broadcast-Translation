class BroadcastRoomsController < ApplicationController
  before_action :set_broadcast_room, only: [:show, :edit, :update, :destroy]

  # GET /broadcast_rooms
  def index
    @broadcast_rooms = BroadcastRoom.all
  end

  # GET /broadcast_rooms/1
  def show
  end

  # GET /broadcast_rooms/new
  def new
    @broadcast_room = BroadcastRoom.new
  end

  # GET /broadcast_rooms/1/edit
  def edit
  end

  # POST /broadcast_rooms
  def create
    @broadcast_room = BroadcastRoom.new(broadcast_room_params)

    if @broadcast_room.save
      redirect_to @broadcast_room, notice: 'Broadcast room was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /broadcast_rooms/1
  def update
    if @broadcast_room.update(broadcast_room_params)
      redirect_to @broadcast_room, notice: 'Broadcast room was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /broadcast_rooms/1
  def destroy
    @broadcast_room.destroy
    redirect_to broadcast_rooms_url, notice: 'Broadcast room was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_broadcast_room
      @broadcast_room = BroadcastRoom.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def broadcast_room_params
      params.require(:broadcast_room).permit(:title, :event_id)
    end
end
