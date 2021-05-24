class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
    @prank = Prank.find(params[:prank_id])
    @booking = Booking.new
  end


  def create
    @booking = Booking.new(booking_params)
    # to do
  end

  def edit
    # to do

  end
end
