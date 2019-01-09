class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end

  def show
    @room = Room.find(params[:id])
    @messages = Message.where(room_id:params[:id]).includes(:user)
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to  rooms_path
    else
      render new
    end
  end

private
def room_params
  params.require(:room).permit(:name,:description, {user_ids: []})
end
end
