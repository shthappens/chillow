require 'spec_helper'

RSpec.describe Apartment do

  let(:apartment) { Apartment.new(
    {
      address: "1 Yawkey Way",
      city: "Boston",
      state: "MA",
      zip_code: "02110",
      rent: "$2500",
      lease_start_date: "September 1",
      lease_end_date: "May 1",
      total_capacity: "4",
    })
  }
  let(:sam) { Occupant.new("Sam", "Tee", "Sam Tee", "No") }
  let(:gabrielle) { Occupant.new("Gabrielle", "Tee", "Gabrielle Tee", "No") }
  let(:kristen) { Occupant.new("Kristen", "Tee", "Kristen Tee", "No") }
  let(:seth) { Occupant.new("Seth", "Tee", "Seth Tee", "No") }

  it "should inherit from Dwelling class" do
    expect(Apartment).to be < Dwelling
  end

  it "initializes with an address" do
    expect(apartment.address).to eq("1 Yawkey Way")
  end

  it "initializes with a city" do
    expect(apartment.city).to eq("Boston")
  end

  it "initializes with a zip code" do
    expect(apartment.zip_code).to eq("02110")
  end

  it "initializes with an asking price" do
    expect(apartment.rent).to eq("$2500")
  end

  it "intializes a lease start date" do
    expect(apartment.lease_start_date).to eq("September 1")
  end

  it "initializes a lease end date" do
    expect(apartment.lease_end_date).to eq("May 1")
  end

  it "intializes with total rooms" do
    expect(apartment.total_capacity).to eq("4")
  end

  context "checking to see if the apartment is full" do
    it "is not fully occupied" do
      expect(apartment.full?).to eq(false)
    end

    it "is fully occupied" do
      apartment.add(sam)
      apartment.add(gabrielle)
      apartment.add(kristen)
      apartment.add(seth)
      expect(apartment.full?).to eq(true)
    end
  end

  context "adding roommates" do
    it "adds a roommate if the apartment is not full" do
      expect(apartment.add("occupant")).to eq(1)
    end
  end

  context "removing roommates" do
    it "removes a roommate if the roommate is moving" do
      expect(apartment.remove_item).to eq(nil)
    end
  end

end
