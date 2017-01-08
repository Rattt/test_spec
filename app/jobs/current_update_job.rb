class CurrentUpdateJob < ApplicationJob
  queue_as :default

  def perform(current)
    forsed = Forsed.last
    if forsed.endtime > Time.now
      ActionCable.server.broadcast "current_channel", message: forsed.price
    else
      ActionCable.server.broadcast "current_channel", message: current.price
    end
  end
end
