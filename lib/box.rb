require_relative 'occupant'

class Box

  attr_reader :full_name

  def initialize(box_info)
    @full_name = box_info[:full_name]
  end

end
