FactoryGirl.define do
  factory :forsed do
    name "USD"
    price 720.1
    endtime Time.now + 1.minutes
  end
end
