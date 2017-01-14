class Forsed < ApplicationRecord
  after_create_commit{ CurrentUpdateJob.perform_later }
  validates :price, numericality: true
end
