class RoomsController < ApplicationController
  def show
    @messages = Message.all.includes(:user)
  end
end
