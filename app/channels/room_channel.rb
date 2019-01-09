class RoomChannel < ApplicationCable::Channel
  def subscribed
    stream_from "room_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def play
    ActionCable.server.broadcast 'room_channel'
  end

  def speak(data)
    save_content = Message.create!(content: data['content'], youtube: data['youtube'], user_id: current_user.id)
    user = User.find(current_user.id)
    ActionCable.server.broadcast 'room_channel', content: save_content.content, youtube: save_content.youtube, user_id: save_content.user_id, user: user
  end

end
