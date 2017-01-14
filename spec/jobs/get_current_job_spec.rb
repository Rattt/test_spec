require 'rails_helper'
require 'net/http'
require 'json'

RSpec.describe GetCurrentJob, type: :job do
  ActiveJob::Base.queue_adapter = :test

  it "GetCurrentJob have_enqueued_job" do
    expect { GetCurrentJob.perform_later }.to have_enqueued_job
  end

end
