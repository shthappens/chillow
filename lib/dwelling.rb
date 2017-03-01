class Dwelling

  attr_reader :address, :city, :state, :zip_code

  def initialize(dwelling_info)
    @address = dwelling_info[:address]
    @city = dwelling_info[:city]
    @state = dwelling_info[:state]
    @zip_code = dwelling_info[:zip_code]
  end

end
