class BookingsController < ApplicationController
  def new
    @flight = Flight.find(params[:flight])
    @booking = Booking.new(flight_id: @flight.id)
    total = params[:number_of_passengers].to_i
    @gender_options = [:male,:female,:other]
    @passengers = Array.new
    total.times do |t|
      @passengers << @booking.passengers.build
    end
  end
  def create
     @booking = Booking.create(booking_params)
     @booking.passengers.build(passenger_params)
     if @booking.save
     redirect_to booking_path(@booking.id)
   PassengerMailer.booking_email(@booking.passengers[0]).deliver_later
     else
       @booking.delete
   end
 end
  def show
    @booking = Booking.find(params[:id])
    @flight = @booking.flight
@passengers = @booking.passengers
  end

  private

  def booking_params
    params.require(:booking).permit(:email, :flight_id)
  end

  def passenger_params
    params.require(:booking).permit(:passenger)
  end
end
