module Checker

  def full?
    @capacity.size >= total_capacity.to_i
  end

  def add(item)
    unless full?
      @capacity << item
    else
      raise "This is currently at full capacity."
    end
    @capacity.length
  end

  def remove_box
    @capacity.pop
  end

  def remove_roommate
    if move == "Yes"
      @capacity.pop
    end
    @capacity.length
  end

  def unload(contents)
    @capacity.clear
  end

end
