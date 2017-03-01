require 'spec_helper'

RSpec.describe Occupant do

  let(:occupant) { Occupant.new("Seth", "Thompson", "Yes") }

  it "initializes with a first name" do
    expect(occupant.first_name).to eq("Seth")
  end

  it "initializes with a last name" do
    expect(occupant.last_name).to eq("Thompson")
  end

  it "initializes with a move status of Yes or No" do
    expect(occupant.move).to eq("Yes")
  end
end
