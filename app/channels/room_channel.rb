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
    save_content = Message.create!(content: data['content'], youtube: data['youtube'])
    ActionCable.server.broadcast 'room_channel', content: save_content.content, youtube: save_content.youtube
  end

end
