class BookingsController < ApplicationController

  before_action :set_pethome, only: [:create]

  def create
    @booking = Booking.new(booking_params)
    @booking.pethome = @pethome
    @booking.user = current_user
    @booking.save
    redirect_to root_path, notice: "Thanks for your booking. Details are saved on your profile"
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(params[:booking])

  end

  def show
    @booking = Booking.find(params[:id])
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
  end

  def approve_booking
    @booking = Booking.find(params[:id])
    @booking.status = "approved"
    @booking.save
    redirect_to account_path, notice: "A booking from #{@booking.user_id} has been accepted"
  end

  private

  def set_pethome
    @pethome = Pethome.find(params[:pethome_id])

  end

  def booking_params
    params.require(:booking).permit(:pethome, :user, :pethome_reviews, :booking_reviews, :status, :starting_date, :ending_date)
  end

end
