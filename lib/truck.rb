require_relative 'checker_module'

class Truck
  include Checker

  attr_reader :box_capacity, :boxes

  def initialize(truck_info)
    @box_capacity = truck_info[:box_capacity]
    @boxes = []
  end

end
