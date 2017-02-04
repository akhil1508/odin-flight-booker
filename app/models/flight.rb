class Flight < ApplicationRecord
  belongs_to :arriving, class_name: "Airport"
  belongs_to :departing, class_name: "Airport"
  has_many :bookings
  def flight_dates
    return departing_time.to_date
  end

  def duration
    return  arrival_time - departure_time

  end
end
