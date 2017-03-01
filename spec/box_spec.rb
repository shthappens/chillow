require 'spec_helper'

RSpec.describe Box do

  let(:box) { Box.new(
    {
      box_name: "Seth Thompson",
    })
  }

  it "initializes with the owner's name on the box" do
    expect(box.box_name).to eq("Seth Thompson")
  end

end
