# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Booking.destroy_all
Pet.destroy_all
PethomeReview.destroy_all
PetsitterReview.destroy_all
Pethome.destroy_all
User.destroy_all

puts 'Creating 30 fake pets...'
30.times do
  user = User.new(
    email:    Faker::Internet.email,
    password: "123456",
    remote_photo_url: Faker::Avatar.image,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name
  )
  user.save!

  pethome = Pethome.new(
    user_id: user.id,
    address: Faker::Address.street_address,
    bedrooms: rand(1..6),
    guests: rand(1..6),
    observations: Faker::Lorem.sentence,
    remote_photo_url: Faker::LoremPixel.image("500x600", false, 'city')
    )
    pethome.save!


  rand(1..6).times do
    pet = Pet.new(
      name:    "#{Faker::Name.prefix} #{Faker::DragonBall.character}",
      pethome_id: pethome.id,
      category: ["dog", "elderly dog", "horse", "elderly cat", "hamster", "puppy", "kitten", "cat", "bird", "snake", "fish", "turtle", "chinchilla", "rat", "rabbit"].sample,
      breed: ["friendly breed", "sorta scary breed", "polite type"].sample,
      weight: rand(5..100).to_s + "kg",
      size: "#{Faker::Address.street_address}, #{Faker::Address.city}",
      color:  Faker::Color.color_name,
      remote_photo_url: Faker::LoremPixel.image("500x600", false, 'animals'),
      observations: Faker::Lorem.sentence
    )
  pet.save!

  end

end
# url = "https://www.pets4homes.co.uk/images/articles/2666/large/predicting-the-colour-of-labrador-retriever-puppies-54f44cee7979e.jpg"
# pet = Pet.create({name: "Fido", pethome_id: 1, category: "dog", breed: "labrador", weight: "20kg", size: "medium", color: "golden", picture: url, observations: "splendid dog- the very best of all."})


# url = "https://i.ytimg.com/vi/PXlDWtCh3IU/maxresdefault.jpg"
# pet = Pet.create({name: "Bob", pethome_id: 2, category: "dog", breed: "bulldog", weight: "10kg", size: "small", color: "white", picture: url, observations: "well- she tries, but has some annoying tendancies."})


# url = "https://img.dog-learn.com/dog-breeds/smooth-fox-terrier/smooth-fox-terrier-i5.jpg"
# pet = Pet.create({name: "Becky", pethome_id: 3, category: "dog", breed: "fox terrier", weight: "8kg", size: "small", color: "tri color", picture: url, observations: "My dog is the best dog on this earth. Having said that, he sometimes eats poo." })

# url = ""
# pet = Pet.create({breed: "bulldog", weight: "10kg", size: "small", color: "white" })
# pet.save!
# pet.photo_url = url

# url = "https://ralfweiser.files.wordpress.com/2012/11/ralf-a4.jpg"
# user = User.create({email:"j@jjhhf.com", password: 123456, picture: url, first_name: "keeyn", last_name: "berryn"})
# #User.all

# url = "http://images.amcnetworks.com/amc.com/wp-content/uploads/2015/05/AMC_MM_S7B_TAS_714_PeggyStan.jpg"
# user = User.create({email:"jfjfjf@jjdjf.com", password: 123456, picture: url, first_name: "fernando", last_name: "bernando"})

# url = "http://static1.businessinsider.com/image/55e622f19dd7cc1a008b779f/only-one-person-can-stop-china-from-buying-up-big-american-companies.jpg"
# user = User.create({email:"bee@bob.com", password: 132456, picture: url, first_name: "alexandra", last_name: "balexandra"})


# url = "https://static.pexels.com/photos/106399/pexels-photo-106399.jpeg"
# pethome = Pethome.create({user_id: 1, address:"1 rue du Rhin", bedrooms: 2, guests: 4, observations: "lovely house to stay in", picture: url})

# url = "http://redhomesnc.com/wp-content/uploads/2016/03/Home-picture.jpg"
# pethome = Pethome.create({user_id: 2, address:"121 rue du Rhin", bedrooms: 1, guests: 2, observations: "lovely house to stay in", picture: url})

# url = "http://www.hilltexhomes.com/wp-content/uploads/2013/12/hilltexhomes.jpg"
# pethome = Pethome.create({user_id: 3, address:"4 rue du Rhin", bedrooms: 4, guests: 3, observations: "lovely house to stay in", picture: url})



pethome_review = PethomeReview.create({booking_id: 1, rating: 3, comment: "greaaaat"})

pethome_review = PethomeReview.create({booking_id: 2, rating: 4, comment: "fabulous time"})

pethome_review = PethomeReview.create({booking_id: 3, rating: 5, comment: "fabulous"})



petsitter_review = PetsitterReview.create({booking_id: 1, rating: 4, comment: "greaaaat"})

petsitter_review = PetsitterReview.create({booking_id: 2, rating: 5, comment: "10 out o 10"})

petsitter_review = PetsitterReview.create({booking_id: 3, rating: 2, comment: "some issues"})


booking = Booking.create({starting_date: Date.new(2017, 8, 29), ending_date: Date.new(2017, 9, 29), user_id: 1, pethome_id: 1})

booking = Booking.create({starting_date: Date.new(2017, 9, 29), ending_date: Date.new(2017, 10, 29), user_id: 2, pethome_id: 2})

booking = Booking.create({starting_date: Date.new(2017, 10, 29), ending_date: Date.new(2017, 11, 29), user_id: 3, pethome_id: 3})



# Pethome.last.pethome_reviews

# Booking.create(user_id:2, pethome_id:1)







