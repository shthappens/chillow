require 'pry'

class Apartment

  attr_reader :address, :city, :rent, :zip_code, :lease_start_date
  attr_reader :lease_end_date, :total_capacity, :used_capacity

  def initialize(apartment_info)
    @address = apartment_info[:address]
    @city = apartment_info[:city]
    @zip_code = apartment_info[:zip_code]
    @rent = apartment_info[:rent]
    @lease_start_date = apartment_info[:lease_start_date]
    @lease_end_date = apartment_info[:lease_end_date]
    @total_capacity = apartment_info[:total_capacity]
    @used_capacity = apartment_info[:used_capacity]
  end

  def full?
    total_capacity == used_capacity
  end

  def add_roommate(occupant)
  end

  def remove_roommate
  end

end
