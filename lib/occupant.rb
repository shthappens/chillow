class Occupant

  attr_reader :first_name, :last_name, :full_name, :move

  def initialize(first_name, last_name, full_name, move)
    @first_name = first_name
    @last_name = last_name
    @full_name = full_name
    @move = move
  end

end
