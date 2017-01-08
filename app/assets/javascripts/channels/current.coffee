App.current = App.cable.subscriptions.create "CurrentChannel",
  connected: ->
    # Called when the subscription is ready for use on the server
    console.info "conected"

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    # Called when there's incoming data on the websocket for this channel
    $("#price").text(data['message'])
    console.info data
