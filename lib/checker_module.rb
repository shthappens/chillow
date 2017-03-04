module Checker

  def full?
    if @capacity.size >= total_capacity.to_i
      true
    else
      false
    end
  end

  def add(item)
    unless full?
      @capacity << item
    else
      raise "This is currently at full capacity."
    end
    @capacity.length
  end

  def remove_item
    @capacity.pop
  end

  def unload(contents)
    @capacity.clear
  end

end
