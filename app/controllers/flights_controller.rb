class FlightsController < ApplicationController
  def index
    @airport_options = Airport.all.map {|x| x.code}
    @flight_dates = Flight.all.map {|x| x.departure_time.to_date}
    @flight_dates = @flight_dates.to_set.to_a
    @valid_number_of_passengers = [1,2,3,4]

    from_airport = Airport.find_by(code: params[:from_airport])
    to_airport = Airport.find_by(code: params[:to_airport])
    if from_airport && to_airport
    @flights = Flight.where(departing_id: from_airport.id, arriving_id: to_airport.id)
    @number_of_passengers = params[:number_of_passengers]
  end
  end
end
