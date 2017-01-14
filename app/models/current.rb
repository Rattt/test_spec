class Current < ApplicationRecord
  after_create_commit{ CurrentUpdateJob.perform_later self }
  validates :price, numericality: true
end
