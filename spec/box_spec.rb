require 'spec_helper'

RSpec.describe Box do

  let(:box) { Occupant.new("Seth", "Tee", "Seth Tee", "Yes") }

  it "initializes with the owner's name on the box" do
    expect(box.full_name).to eq("Seth Tee")
  end

end
