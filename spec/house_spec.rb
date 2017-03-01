require 'spec_helper'

RSpec.describe House do

  let(:house) { House.new(
    {
      address: "1 Yawkey Way",
      city: "Boston",
      state: "Massachusetts",
      zip_code: "02110",
      asking_price: "$255,000"
    })
  }

  it "initializes with an address" do
    expect(house.address).to eq("1 Yawkey Way")
  end

  it "initializes with a city" do
    expect(house.city).to eq("Boston")
  end

  it "intializes with a state" do
    expect(house.state).to eq("Massachusetts")
  end

  it "initializes with a zip code" do
    expect(house.zip_code).to eq("02110")
  end

  it "initializes with an asking price" do
    expect(house.asking_price).to eq("$255,000")
  end

end
