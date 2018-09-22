# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Seeding data....."

def open_asset(file_name)
  File.open(Rails.root.join('db', 'seed_assets', file_name))
end

unless Rails.env.development?
  puts "Development seeds only (for now)!"
  exit 0
end

### Users

puts "Creating Test Users..."


user1 = User.create!({
  first_name: 'andrew',
  last_name: 'hsieh',
  email: 'andrewhsieh1208@gmail.com',
  password: 'andrew',
  location: '35 Fielding Ave, Toronto'
})


user2 = User.create!({
  first_name: 'chris',
  last_name: 'lo',
  email: 'chrislo.7@live.com',
  password: 'chris',
  location: '46 Spadina Ave, Toronto'
})


user3 = User.create!({
  first_name: 'vincent',
  last_name: 'ly',
  email: 'veely1@gmail.com',
  password: 'vincent',
  location: 'eaton center, toronto'
})


user4 = User.create!({
  first_name: 'lexy',
  last_name: 'yu',
  email: 'lexy@gmail.com',
  password: 'lexy',
  location: 'kensington market, toronto'
})


puts "Generating some content articles..."

article1 = Article.create!({
  title: "get swole bois",
  link: "www.example.com",
  user_id: 1
})

article2 = Article.create!({
  title: "keto is the way",
  link: "www.example.com",
  user_id: 3
})

article3 = Article.create!({
  title: "i gym every morning and im big af",
  link: "www.example.com",
  user_id: 2
})

articl4 = Article.create!({
  title: "is big better?",
  link: "www.example.com",
  user_id: 4
})


puts "Generating some user created blogs..."

blog1 = Blog.create!({
  title: "How to bench press with a towel",
  content: "1. Grab a towel 2. Lie down 3. Raise hands (with towel) in normal bench press position 4. Bench 5. Make all kinds of gains",
  user_id: 1
})

blog2 = Blog.create!({
  title: "10 fitness tips to get fitter, the 3rd one might shock you",
  content: "1. Your reflection in the mirror is always bigger than you 2. You are always smaller than someone 3. This is a fake article with fake tips 4. Bicep curls train your biceps 5. Leg press involves a pressing movement with your legs 6. Bench press involves utilizing a bench 7. Nutrition is important, but Popeyes is too good 8. Feel less tired by pretending to workout and telling everyone on Instagram 9. Wear deodorant to make 22.18 percent mnore gains 10. You really wasted your time reading this fake blog",
  user_id: 2
})

blog3 = Blog.create!({
  title: "$1 Diet vs $150 Diet",
  content: "The one dollar diet consists of eating paper (0 cal) alongside the combination of water and fasting. The 150 dollar diet consists of eating steak (2000 cal) and gold (?? cal) for each meal.",
  user_id: 3
})

blog4 = Blog.create!({
  title: "Popeyes Daily Specials to diet on a budget",
  content: "When you eat popeyes daily specials you can grab a meal for less than 6$ and achieve a relatively healthy diet if you eat it mid-workout. This is done through the 100 percent scientifically proven research of Sean and Chris. Experiment shows that subjects who eat popeyes mid-workout can make at least 60.32 percent more muscle than subjects who don't eat Popeyes mid-workout. ",
  user_id: 4
})

puts "Generating some events..."

event1 = Event.create!({
  name: "Group Wrestling",
  description: "Wrestling WWE style ROYAL RUMBLE!!",
  location: "46 Spadina Ave, Toronto, ON",
  datetime: "October 30, 2018 1:00 AM",
  user_id: 1
})

event2 = Event.create!({
  name: "Hot Yoga",
  description: "Very hot group yoga to promote relaxation",
  location: "Eaton Center, Toronto",
  datetime: "October 10, 2018 2:30 PM",
  user_id: 2
})

event3 = Event.create!({
  name: "Fun in the Sun",
  description: "Having all kinds of fun",
  location: "CN Tower, Toronto",
  datetime: "October 16, 2018 12:00 PM",
  user_id: 3
})

event4 = Event.create!({
  name: "Pool Party with Barney",
  description: "Pool party but everyone has to dress as Barney the dinosaur",
  location: "Union Station, Toronto",
  datetime: "November 12, 2018 12:00 AM",
  user_id: 4
})

puts "Generating some fitness goals..."

goal1 = FitnessGoal.create!({
  description: "Run 5km",
  datetime: "October 5, 2018 5:00 AM",
  user_id: 1
})

goal2 = FitnessGoal.create!({
  description: "Lose 10 lbs",
  datetime: "October 5, 2018 5:00 AM",
  user_id: 2
})

goal3 = FitnessGoal.create!({
  description: "Wrestle with Andrew",
  datetime: "October 5, 2018 5:00 AM",
  user_id: 2
})

goal4 = FitnessGoal.create!({
  description: "Grow 1 inch on bicep",
  datetime: "October 5, 2018 5:00 AM",
  user_id: 1
})

goal5 = FitnessGoal.create!({
  description: "Yoga with Chris",
  datetime: "October 5, 2018 5:00 AM",
  user_id: 1
})
