class Box

  attr_reader :box_name

  def initialize(box_info)
    @box_name = box_info[:box_name]
  end

end
