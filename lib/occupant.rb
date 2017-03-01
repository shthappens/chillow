class Occupant

  attr_reader :first_name, :last_name, :move

  def initialize(first_name, last_name, move)
    @first_name = first_name
    @last_name = last_name
    @move = move
  end

end
