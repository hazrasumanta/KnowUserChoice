#here i am creating dummy data
#here adding TopicOfInterests
TopicOfInterest.create(topic: "Photography")
TopicOfInterest.create(topic: "Space")
TopicOfInterest.create(topic: "Sports")
TopicOfInterest.create(topic: "Cars")
TopicOfInterest.create(topic: "Rock Music")
TopicOfInterest.create(topic: "Painting")
TopicOfInterest.create(topic: "Swiming")
TopicOfInterest.create(topic: "Shoping")
TopicOfInterest.create(topic: "Gamming")
TopicOfInterest.create(topic: "Coding")
TopicOfInterest.create(topic: "Dancing")
TopicOfInterest.create(topic: "Travelling")
TopicOfInterest.create(topic: "Movie")
TopicOfInterest.create(topic: "Teaching")
TopicOfInterest.create(topic: "Ridding")
TopicOfInterest.create(topic: "Cooking")
TopicOfInterest.create(topic: "Gyming")
TopicOfInterest.create(topic: "Social Media")
TopicOfInterest.create(topic: "Modeling")
TopicOfInterest.create(topic: "Acting")
puts "New 20 Topic created!"
#================== END OF TopicOfInterests DATA SEEDING =================

#add user 
User.create(name: "sumanta Hazra",phone: "9040451287",email: "hazrasumanta@gmail.com", password: "sumanta123", password_confirmation: "sumanta123")
User.create(name: "Manikant Thakur",phone: "9040451287",email: "manikant.thakur@xceler.ninja", password: "manikant123", password_confirmation: "manikant123")
puts "Two new user created!"
#================== END USER DATA SEEDING =================

#assignment TopicOfInterests to user
all_users = User.all
all_users.each do |user|
	user.topic_of_interests = TopicOfInterest.order("RAND()").limit(10)
	user.save
end
puts "assignment TopicOfInterests to user done!"
#assignment user to TopicOfInterests
all_topic = TopicOfInterest.all.limit 5
all_topic.each do |topic|
	topic.users = User.order("RAND()").limit(10)
	topic.save
end
puts "assignment user to TopicOfInterests"