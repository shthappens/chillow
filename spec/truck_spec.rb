require 'spec_helper'

RSpec.describe Truck do

  let(:truck) { Truck.new(
    {
      box_capacity: "20",
      # box_amount: "5"
    })
  }

  it "initializes with the capacity of boxes" do
    expect(truck.box_capacity).to eq("20")
  end

  # it "initializes with the current amount of boxes" do
  #   expect(truck.box_amount).to eq("5")
  # end

  it "calculates if the truck is full" do
    expect(truck.truck_full?).to eq(false)
  end

  it "adds one box if the truck has room" do
    expect(truck.add_box("box")).to eq(1)
  end

  it "removes one box" do
    expect(truck.remove_box).to eq(nil)
  end

  it "unloads all boxes" do
    expect(truck.unload("contents")).to eq([])
  end

end
