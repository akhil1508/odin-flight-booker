class PassengerMailer < ApplicationMailer
  def booking_email(passenger)
    @user = passenger
    mail(to: @user.booking.email, subject: "Thanks for booking, asshole")
  end
end
