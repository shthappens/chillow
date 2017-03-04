require 'spec_helper'

RSpec.describe Truck do

  let(:truck) { Truck.new({ total_capacity: "20" }) }

  it "initializes with the capacity of boxes" do
    expect(truck.total_capacity).to eq("20")
  end

  it "calculates if the truck is full" do
    expect(truck.full?).to eq(false)
  end

  it "calculates if the truck is full" do
    20.times do truck.add("boxes") end
    expect(truck.full?).to eq(true)
  end

  it "adds one box if the truck has room" do
    expect(truck.add("box")).to eq(1)
  end

  it "removes one box" do
    expect(truck.remove_item).to eq(nil)
  end

  it "unloads all boxes" do
    expect(truck.unload("contents")).to eq([])
  end

end
