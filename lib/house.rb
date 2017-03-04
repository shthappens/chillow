require_relative 'dwelling'

class House < Dwelling

  attr_reader :asking_price

  def initialize(house_info)
    super { |hash, key| hash[key] = [] }
    @asking_price = house_info[:asking_price]
  end

end
