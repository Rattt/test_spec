require 'rails_helper'

RSpec.describe Current, type: :model do
  it "is valid with valid attributes" do
    expect(FactoryGirl.build(:current)).to be_valid
  end

  it "is not valid without a price" do
    expect(FactoryGirl.build(:current, price: nil)).to_not be_valid
  end

  it "is not valid with a price is string" do
    expect(FactoryGirl.build(:current, price: "as")).to_not be_valid
  end
end
