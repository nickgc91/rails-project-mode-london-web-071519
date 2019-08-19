# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Historical Moment: World War 2 
start_of_moment = Date.new(1939)
end_of_moment = Date.new(1945)
historicalMoment1 = HistoricalMoment.create(name: "World War 2", start_date: start_of_moment, end_date: end_of_moment)
#events
date_of_event = Date.new(1941, 12, 7)
event1 = Event.create(name: "Pearl Harbor", date: date_of_event, HistoricalMoment_id: historicalMoment1.id)
#locations
Location.create(name: "Pearl Harbor, Oahu, Hawaii", event_id: event1.id, actor_id: actor1.id)
Location.create(name: "Pearl Harbor, Oahu, Hawaii", event_id: event1.id, actor_id: actor2.id)

#actors
actor1_birth_year = Date.new(1941, 12, 7)
actor1_death_year = Date.new(1921, 12, 7)
actor1 = Actor.create(name: "Japaneze Kamikaze Pilots", birth_year: actor1_birth_year, actor1_death_year)
actor2_birth_year = Date.new(1882, 1, 30)
actor2_death_year = Date.new(1945, 04, 12)
actor2 = Actor.create(name: "Franklin D. Roosevelt", death_year: actor2_birth_year, actor2_death_year)


#Historical Moment: War Of Indpendence
HistoricalMoment.create("World War 2", "17", "1945")
#events


