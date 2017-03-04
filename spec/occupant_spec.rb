require 'spec_helper'

RSpec.describe Occupant do

  let(:occupant) { Occupant.new("Seth", "Tee", "Seth Tee", "Yes") }

  it "initializes with a first name" do
    expect(occupant.first_name).to eq("Seth")
  end

  it "initializes with a last name" do
    expect(occupant.last_name).to eq("Tee")
  end


  it "initializes with a full name" do
    expect(occupant.full_name).to eq("Seth Tee")
  end

  it "initializes with a move status of Yes or No" do
    expect(occupant.move).to eq("Yes")
  end
end
