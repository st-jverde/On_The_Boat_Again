class PagesController < ApplicationController
  def home
  end

  def profile
    @my_boats = current_user.boats
    @bookings = current_user.bookings
    # @rented_boats = current_user.bookings.boat.name
    @my_rentals = []
    @bookings.each do |booking|
      @my_rentals << booking.boat
    end

    # rented_boats_names = []
    # @boats.each do |boat|
    #   rented_boats_names << boats.name
    # end
  end
end
