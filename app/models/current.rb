class Current < ApplicationRecord
  after_create_commit{ CurrentUpdateJob.perform_later self }
end
