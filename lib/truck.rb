class Truck

  attr_reader :box_capacity, :box_amount
  
  def initialize(truck_info)
    @box_capacity = truck_info[:box_capacity]
    @box_amount = truck_info[:box_amount]
  end

  def full?
    box_capacity == box_amount
  end

  def add_box
    boxes = box_capacity.to_i
    while boxes < box_capacity.to_i
      boxes += 1
    end
    boxes
  end

  def remove_box
  end

  def unload
  end

end
