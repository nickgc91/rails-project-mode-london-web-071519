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
date_of_event1 = Date.new(1941, 12, 7)
description1 = "World War II, also known as the Second World War, was a global war that lasted from 1939 to 1945. The vast majority of the world's countries—including all the great powers—eventually formed two opposing military alliances: the Allies and the Axis."
event1 = Event.create(name: "Pearl Harbor", description: description1, img_url: "https://nationalinterest.org/sites/default/files/styles/desktop__1260_/public/main_images/image-2018-08-03%20%282%29.jpg?itok=pn65Xnf5", event_date: date_of_event1, moment_id: historicalMoment1.id)


#actors
actor1_birth_year = Date.new(1941, 12, 7)
actor1_death_year = Date.new(1921, 12, 7)
bio1 = "Instances of kamikaze pilots were seen as early as the December 7, 1941 attack on Pearl Harbor. Though the suicide pilots of Japan were only organized into specific units later in the war, the concept of the kamikaze attack was a reflection of the Japanese idea that it was better to be killed in battle than captured."
actor1 = Actor.create(name: "Japaneze Kamikaze Pilots", birth_date: actor1_birth_year, death_date: actor1_death_year, bio: bio1, img_url: "http://attackofpearlharbour.weebly.com/uploads/5/7/9/9/5799836/4363123_orig.jpg?1359741438", title: "Airforce Pilot")

actor2_birth_year = Date.new(1882, 1, 30)
actor2_death_year = Date.new(1945, 04, 12)
bio2 = "Franklin Delano Roosevelt, often referred to by initials FDR, was an American statesman and political leader who served as the 32nd president of the United States from 1933 until his death in 1945."
actor2 = Actor.create(name: "Franklin D. Roosevelt", birth_date: actor2_birth_year, death_date: actor2_death_year, bio: bio2, img_url: "https://upload.wikimedia.org/wikipedia/commons/3/37/FDR_in_1933_edit.jpg", title: "President of the United States of America")

#locations
Location.create(event_id: event1.id, actor_id: actor1.id, name: "Pearl Harbor, Oahu, Hawaii")
Location.create(name: "Pearl Harbor, Oahu, Hawaii", event_id: event1.id, actor_id: actor2.id)

#Historical Moment: War Of Indpendence
# HistoricalMoment.create("World War 2", "17", "1945")
#events


