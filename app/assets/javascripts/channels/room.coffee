App.room = App.cable.subscriptions.create "RoomChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    alert data['content']
    # Called when there's incoming data on the websocket for this channel

  speak:(content) ->
    @perform 'speak', content:content
