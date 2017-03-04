module Checker

  def truck_full?
    @boxes.size >= box_capacity.to_i
  end

  def apartment_full?
    @occupants.size >= total_capacity.to_i
  end

  def add_box(box)
    unless truck_full?
      @boxes << box
    else
      raise "This truck is currently at full capacity."
    end
    @boxes.length
  end

  def add_roommate(occupant)
    unless apartment_full?
      @occupants << occupant
    else
      raise "This apartment is currently at full capacity."
    end
    @occupants.length
  end

  def remove_box
    @boxes.pop
  end

  def remove_roommate
    if move == "Yes"
      @occupants.pop
    end
    @occupants.length
  end

  def unload(contents)
    @boxes.clear
  end

end
