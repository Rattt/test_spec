require 'rails_helper'

RSpec.describe CurrentUpdateJob, type: :job do
  ActiveJob::Base.queue_adapter = :test

  it "CurrentUpdateJob have_enqueued_job" do
    expect { CurrentUpdateJob.perform_later(Current.last) }.to have_enqueued_job
  end
end
