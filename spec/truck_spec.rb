require 'spec_helper'

RSpec.describe Truck do

  let(:truck) { Truck.new(
    {
      box_capacity: "20",
      box_amount: "5"
    })
  }

  it "initializes with the capacity of boxes" do
    expect(truck.box_capacity).to eq("20")
  end

  it "initializes with the current amount of boxes" do
    expect(truck.box_amount).to eq("5")
  end
end
