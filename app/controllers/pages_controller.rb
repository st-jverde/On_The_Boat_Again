class PagesController < ApplicationController
  def home
  end

  def profile
    @my_boats = current_user.boats
    @bookings = current_user.bookings
  end
end
