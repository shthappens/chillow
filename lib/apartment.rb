require_relative 'dwelling'
require_relative 'occupant'
require_relative 'checker_module'

class Apartment < Dwelling

  include Checker

  attr_reader :address, :city, :rent, :zip_code, :lease_start_date
  attr_reader :lease_end_date, :total_capacity, :used_capacity, :occupants
  attr_reader :move

  def initialize(apartment_info)
    super { |hash, key| hash[key] = [] }
    @rent = apartment_info[:rent]
    @lease_start_date = apartment_info[:lease_start_date]
    @lease_end_date = apartment_info[:lease_end_date]
    @total_capacity = apartment_info[:total_capacity]
    @occupants = []
  end

end
