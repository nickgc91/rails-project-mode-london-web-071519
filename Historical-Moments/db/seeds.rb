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
event1 = Event.create(name: "Pearl Harbor", description: description1, img_url: "https://cdn.britannica.com/s:500x350/19/192919-049-61E0CA86.jpg", event_date: date_of_event1, historical_moment_id: historicalMoment1.id)

#actors
actor1_birth_year = Date.new(1941, 12, 7)
actor1_death_year = Date.new(1921, 12, 7)
bio1 = "Instances of kamikaze pilots were seen as early as the December 7, 1941 attack on Pearl Harbor. Though the suicide pilots of Japan were only organized into specific units later in the war, the concept of the kamikaze attack was a reflection of the Japanese idea that it was better to be killed in battle than captured."
actor1 = Actor.create(name: "Japaneze Kamikaze Pilots", birth_date: actor1_birth_year, death_date: actor1_death_year, bio: bio1, img_url: "http://attackofpearlharbour.weebly.com/uploads/5/7/9/9/5799836/4363123_orig.jpg?1359741438", title: "Airforce Pilot")

actor2_birth_year = Date.new(1882, 1, 30)
actor2_death_year = Date.new(1945, 4, 12)

bio2 = "Franklin Delano Roosevelt, often referred to by initials FDR, was an American statesman and political leader who served as the 32nd president of the United States from 1933 until his death in 1945."
actor2 = Actor.create(name: "Franklin D. Roosevelt", birth_date: actor2_birth_year, death_date: actor2_death_year, bio: bio2, img_url: "https://upload.wikimedia.org/wikipedia/commons/3/37/FDR_in_1933_edit.jpg", title: "President of the United States of America")

#locations
Location.create(event_id: event1.id, actor_id: actor1.id, name: "Pearl Harbor, Oahu, Hawaii")
Location.create(name: "Pearl Harbor, Oahu, Hawaii", event_id: event1.id, actor_id: actor2.id)

#Historical Moment: War Of Indpendence
# HistoricalMoment.create("World War 2", "17", "1945")


woi = HistoricalMoment.create(name: "U.S. War of Independence", start_date: Date.new(1775, 04, 17), end_date: Date.new(1783, 9, 03))
yorktown = Event.create(name: "Siege of Yorktown", description: "Siege", img_url: "https://www.britishbattles.com/wp-content/uploads/2018/05/american-continental-troops-capture-guns-560.jpg", event_date: Date.new(1781, 10, 19), historical_moment_id: woi.id)

alex = Actor.create(name: "Alexander Hamilton", birth_date: Date.new(1755, 1, 11), death_date: Date.new(1804, 7, 12), bio: "First Secretary of the Treasury", img_url: "https://i.guim.co.uk/img/media/315f74b188ed4812d260916f377a9ae73d6d2ee9/0_119_3696_2219/master/3696.jpg?width=300&quality=85&auto=format&fit=max&s=38f3f26ff346da0d19331972feea23c2", title: "Hero")

gw  = Actor.create(name: "George Washington", birth_date: (Date.new(1732, 2, 22)), death_date: (Date.new(1799, 12, 14)), bio: "General and President", img_url: "https://en.wikipedia.org/wiki/George_Washington#/media/File:Gilbert_Stuart_Williamstown_Portrait_of_George_Washington.jpg", title: "General")

valley_forge = Event.create(name: "Winter at Valley Forge", description: "Major Bummer", img_url: "https://cdn.britannica.com/s:500x350/59/121659-004-AF5A80C7.jpg", event_date: (Date.new(1777, 12, 19)), historical_moment_id: woi.id)
Location.create(event_id: yorktown.id, actor_id: alex.id, name: "Yorktown, VA")
Location.create(event_id: yorktown.id, actor_id: gw.id, name: "Yorktown, VA")

Location.create(event_id: valley_forge.id, actor_id: alex.id, name: "Yorktown, VA")
Location.create(event_id: valley_forge.id, actor_id: gw.id, name: "Yorktown, VA")

Document.create(title: "The Declaration of Independence", creation_date: (Date.new(1776, 7, 4)), author: "Thomas Jefferson", text: "https://www.archives.gov/founding-docs/declaration-transcript", historical_moment_id: woi.id)
Document.create(title: "Common Sense", creation_date: (Date.new(1776, 1, 1)), author: "Thomas Paine", text: "https://www.learner.org/workshops/primarysources/revolution/docs/Common_Sense.pdf", historical_moment_id: woi.id)

womans_suffrage = HistoricalMoment.create(name: "Women's Suffrage Movement", start_date: (Date.new(1848, 7,7)), end_date: Date.new(1920, 8, 18))
sba= Actor.create(name: "Susan B. Anthony", birth_date: (Date.new(1820, 2, 15)), death_date: (Date.new(1906, 3, 13)), bio: "Susan B. Anthony (February 15, 1820 – March 13, 1906) was an American social reformer and women's rights activist who played a pivotal role in the women's suffrage movement.", img_url: "https://en.wikipedia.org/wiki/Susan_B._Anthony#/media/File:Susan_B_Anthony_c1855.png", title: "Icon")
ecs = Actor.create(name: "Elizabeth Cady Stanton", birth_date: Date.new(1815, 11, 12), death_date: Date.new(1902, 10, 26), bio: "Elizabeth Cady Stanton (November 12, 1815 – October 26, 1902) was an American suffragist, social activist, abolitionist, and leading figure of the early women's rights movement. Her Declaration of Sentiments, presented at the Seneca Falls Convention held in 1848 in Seneca Falls, New York, is often credited with initiating the first organized women's rights and women's suffrage movements in the United States.[1][2] Stanton was president of the National American Woman Suffrage Association from 1890 until 1892.", img_url: "https://en.wikipedia.org/wiki/Elizabeth_Cady_Stanton#/media/File:Elizabeth_Stanton.jpg", title: "Icon")

senecca_falls = Event.create(name: "Seneca Falls Convention", description: "The Seneca Falls Convention was the first women's rights convention. It advertised itself as 'a convention to discuss the social, civil, and religious condition and rights of woman'. Held in the Wesleyan Chapel of the town of Seneca Falls, New York, it spanned two days over July 19–20, 1848. Attracting widespread attention, it was soon followed by other women's rights conventions, including the Rochester Women's Rights Convention in Rochester, New York, two weeks later. In 1850 the first in a series of annual National Women's Rights Conventions met in Worcester, Massachusetts.", img_url: "https://www.c4women.org/wp-content/uploads/2018/07/0365e4e9855679b8aa7161333eb87199.png", event_date: (Date.new(1848, 7, 19)), historical_moment_id: womans_suffrage.id)
Location.create(event_id: senecca_falls.id, actor_id: sba.id, name: "Seneca Falls")
Location.create(event_id: senecca_falls.id, actor_id: ecs.id, name: "Seneca Falls")
lm = Actor.create(name: "Lucrecia Mott", birth_date: (Date.new(1793, 1, 3)), death_date: (Date.new(1880, 11, 11)), bio: "Lucretia Mott (née Coffin) was a U.S. Quaker, abolitionist, women's rights activist, and social reformer. She had formed the idea of reforming the position of women in society when she was amongst the women excluded from the World Anti-Slavery Convention in 1840. In 1848 she was invited by Jane Hunt to a meeting that led to the first meeting about women's rights. Mott helped write the Declaration of Sentiments during the 1848 Seneca Falls Convention.", img_url: "https://en.wikipedia.org/wiki/Lucretia_Mott#/media/File:Mott_Lucretia_Painting_Kyle_1841.jpg", title: "Superhero")
Location.create(event_id: senecca_falls.id, actor_id: lm.id, name: "Seneca Falls")
fd = Actor.create(name: "Frederick Douglas", birth_date: (Date.new(1818, 1, 1)), death_date: (Date.new(1895, 2, 20)), img_url: "https://en.wikipedia.org/wiki/Seneca_Falls_Convention#/media/File:Frederick_Douglass_(1840s).jpg", title: "Orator and Activist")
Location.create(event_id: senecca_falls.id, actor_id: fd.id, name: "Seneca Falls")

Document.new(title: "Declaration of Sentiments", text: "https://www.britannica.com/event/Declaration-of-Sentiments", creation_date: (Date.new(1848, 7, 19)))
Document.new(title: "U.S. vs Susan B. Anthony", text: "https://pdfs.semanticscholar.org/3951/772fe53ce256d045cf203b920293fa95106d.pdf", creation_date: (Date.new( 1873, 6, 17)), author: "Susan B. Anthony", historical_moment_id: womans_suffrage.id)

uscw = HistoricalMoment.create(name: "U.S. Civil War", start_date: Date.new(1861, 4, 12), end_date: Date.new(1865, 5, 9)) 

al = Actor.new(name: "Abraham Lincoln", birth_date: Date.new(1809, 2, 12), death_date: Date.new(1865, 4, 15), img_url: "https://en.wikipedia.org/wiki/Abraham_Lincoln#/media/File:Abraham_Lincoln_O-77_matte_collodion_print.jpg", bio: "Abraham Lincoln was an American statesman and lawyer who served as the 16th president of the United States from 1861 until his assassination in April 1865. Lincoln led the nation through the American Civil War, its bloodiest war and its greatest moral, constitutional, and political crisis. He preserved the Union, abolished slavery, strengthened the federal government, and modernized the U.S. economy.", title: "President of the United States")

Document.new(title: "O Captain! My Captain!", text: "O Captain! my Captain! our fearful trip is done,
The ship has weather’d every rack, the prize we sought is won,
The port is near, the bells I hear, the people all exulting,
While follow eyes the steady keel, the vessel grim and daring;
                         But O heart! heart! heart!
                            O the bleeding drops of red,
                               Where on the deck my Captain lies,
                                  Fallen cold and dead.

O Captain! my Captain! rise up and hear the bells;
Rise up—for you the flag is flung—for you the bugle trills,
For you bouquets and ribbon’d wreaths—for you the shores a-crowding,
For you they call, the swaying mass, their eager faces turning;
                         Here Captain! dear father!
                            This arm beneath your head!
                               It is some dream that on the deck,
                                 You’ve fallen cold and dead.

My Captain does not answer, his lips are pale and still,
My father does not feel my arm, he has no pulse nor will,
The ship is anchor’d safe and sound, its voyage closed and done,
From fearful trip the victor ship comes in with object won;
                         Exult O shores, and ring O bells!
                            But I with mournful tread,
                               Walk the deck my Captain lies,
                                  Fallen cold and dead.", author: "Walt Whitman", creation_date: Date.new(1865, 4, 15))

Document.new(title: "Gettysburg Address", text: "Four score and seven years ago our fathers brought forth on this continent, a new nation, conceived in Liberty, and dedicated to the proposition that all men are created equal.
Now we are engaged in a great civil war, testing whether that nation, or any nation so conceived and so dedicated, can long endure. We are met on a great battle-field of that war. We have come to dedicate a portion of that field, as a final resting place for those who here gave their lives that that nation might live. It is altogether fitting and proper that we should do this. But, in a larger sense, we can not dedicate—we can not consecrate—we can not hallow—this ground. The brave men, living and dead, who struggled here, have consecrated it, far above our poor power to add or detract. The world will little note, nor long remember what we say here, but it can never forget what they did here. It is for us the living, rather, to be dedicated here to the unfinished work which they who fought here have thus far so nobly advanced. It is rather for us to be here dedicated to the great task remaining before us—that from these honored dead we take increased devotion to that cause for which they gave the last full measure of devotion—that we here highly resolve that these dead shall not have died in vain—that this nation, under God, shall have a new birth of freedom—and that government of the people, by the people, for the people, shall not perish from the earth.", creation_date: Date.new(1863, 11, 19), author: "Abraham Lincoln", historical_moment_id: uscw.id)