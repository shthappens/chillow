require 'spec_helper'

RSpec.describe Dwelling do

  let(:dwelling) { Dwelling.new(
    {
      address: "1 Yawkey Way",
      city: "Boston",
      state: "Massachusetts",
      zip_code: "02110"
    })
  }

  it "initializes with an address" do
    expect(dwelling.address).to eq("1 Yawkey Way")
  end

  it "initializes with a city" do
    expect(dwelling.city).to eq("Boston")
  end

  it "intializes with a state" do
    expect(dwelling.state).to eq("Massachusetts")
  end

  it "initializes with a zip code" do
    expect(dwelling.zip_code).to eq("02110")
  end

end
