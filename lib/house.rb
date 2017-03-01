class House

  attr_reader :address, :city, :state, :zip_code, :asking_price

  def initialize(house_info)
    @address = house_info[:address]
    @city = house_info[:city]
    @state = house_info[:state]
    @zip_code = house_info[:zip_code]
    @asking_price = house_info[:asking_price]
  end

end
