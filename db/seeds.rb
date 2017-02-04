# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
airports_list = ['JFK', 'RGIA', 'IGIA', 'NYC', 'HR', 'CST', 'LMR']
airports_list.each do |i|
  Airport.create(code: i)
end
flights_list = [
  {departing_id: 1,
    arriving_id: 2,
    departure_time: (Time.now + 2.hours),
    arrival_time: (Time.now + 3.hours)
  },
  {departing_id: 3,
    arriving_id: 6,
    departure_time: (Time.now + 4.hours),
    arrival_time: (Time.now + 7.hours)
  },
  {departing_id: 4,
    arriving_id: 1,
    departure_time: (Time.now + 1.hours),
    arrival_time: (Time.now + 31.hours)
  },
  {departing_id: 2,
    arriving_id: 5,
    departure_time: (Time.now + 2.hours),
    arrival_time: (Time.now + 6.hours)
  },
  {departing_id: 7,
    arriving_id: 3,
    departure_time: (Time.now + 3.hours),
    arrival_time: (Time.now + 9.hours)
  },
  {departing_id: 4,
    arriving_id: 7,
    departure_time: (Time.now + 5.hours + 100.minutes),
    arrival_time: (Time.now + 9.hours)
  },

]
flights_list.each do |x|
  Flight.create(x)
end
