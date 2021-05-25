class BookingsController < ApplicationController
  before_action :set_prank, only: [:new, :create]
  def index
    @bookings = policy_scope(Booking)
  end

  def new
    set_prank
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    authorize @booking
    set_prank
    @booking.prank = @prank
    @booking.user = current_user
    if @booking.save
      redirect_to prank_path(@prank)
    else
      render :new
    end
  end

  private

  def set_prank
    @prank = Prank.find(params[:prank_id])
  end

  def booking_params
    @params.require(:booking).permit(:date, :time, :description, :status, :prank_id)
  end
end
