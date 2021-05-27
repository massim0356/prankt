class BookingsController < ApplicationController
  before_action :set_prank, only: [:new, :create]
  def index
    @bookings = policy_scope(Booking).where(user: current_user)
    @bookings_as_owner = policy_scope(Booking).where(prank: current_user.pranks)
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
      redirect_to bookings_path
    else
      render :new
    end
  end

  def update
    @booking = Booking.find(params[:id])
    authorize @booking
    if @booking.update(booking_params)
      redirect_to bookings_path
    else
      render :bookings_path
    end
  end

  private

  def set_prank
    @prank = Prank.find(params[:prank_id])
  end

  def booking_params
    params.require(:booking).permit(:date, :description, :status, :prank_id)
  end
end
