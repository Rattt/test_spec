class CurrentUpdateJob < ApplicationJob
  queue_as :default

  def perform(current)
    ActionCable.server.broadcast "current_channel", message: current.price
  end
end
