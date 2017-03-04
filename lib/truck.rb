require_relative 'checker_module'

class Truck
  include Checker

  attr_reader :total_capacity, :boxes

  def initialize(truck_info)
    @total_capacity = truck_info[:total_capacity]
    @capacity = []
  end

end
