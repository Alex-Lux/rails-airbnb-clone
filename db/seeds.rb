# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require 'faker'

# puts 'Creating 10 fake pets...'
# 10.times do
#   pet = Pet.new(
#     name:    Faker::Company.name,
#     pethome_id: ,
#     category: ["dog", "cat", "bird", "snake", "turtle"].sample
#     breed: ["friendly breed", "sorta scary breed", "polite type"].sample
#     weight:
#     address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
#     rating:  (0..5).to_a.sample
#     rating:  (0..5).to_a.sample
#   )
#   restaurant.save!
# end

url = "https://www.pets4homes.co.uk/images/articles/2666/large/predicting-the-colour-of-labrador-retriever-puppies-54f44cee7979e.jpg"
pet = Pet.create({name: "Fido", pethome_id: 1, category: "dog", breed: "labrador", weight: "20kg", size: "medium", color: "golden", picture: url})


url = "https://i.ytimg.com/vi/PXlDWtCh3IU/maxresdefault.jpg"
pet = Pet.create({name: "Bob", pethome_id: 2, category: "dog", breed: "bulldog", weight: "10kg", size: "small", color: "white", picture: url })


url = "https://img.dog-learn.com/dog-breeds/smooth-fox-terrier/smooth-fox-terrier-i5.jpg"
pet = Pet.create({name: "Becky", pethome_id: 3, category: "dog", breed: "fox terrier", weight: "8kg", size: "small", color: "tri color", picture: url })

# url = ""
# pet = Pet.create({breed: "bulldog", weight: "10kg", size: "small", color: "white" })
# pet.save!
# pet.photo_url = url

url = "https://ralfweiser.files.wordpress.com/2012/11/ralf-a4.jpg"
user = User.create({email:"j@jjhhf.com", password: 123456, picture: url, first_name: "keeyn", last_name: "berryn"})
#User.all

url = "http://images.amcnetworks.com/amc.com/wp-content/uploads/2015/05/AMC_MM_S7B_TAS_714_PeggyStan.jpg"
user = User.create({email:"jfjfjf@jjdjf.com", password: 123456, picture: url, first_name: "fernando", last_name: "bernando"})

url = "http://static1.businessinsider.com/image/55e622f19dd7cc1a008b779f/only-one-person-can-stop-china-from-buying-up-big-american-companies.jpg"
user = User.create({email:"bee@bob.com", password: 132456, picture: url, first_name: "alexandra", last_name: "balexandra"})


url = "https://static.pexels.com/photos/106399/pexels-photo-106399.jpeg"
pethome = Pethome.create({user_id: 1, address:"1 rue du Rhin", bedrooms: 2, guests: 4, observations: "lovely house to stay in", picture: url})

url = "http://redhomesnc.com/wp-content/uploads/2016/03/Home-picture.jpg"
pethome = Pethome.create({user_id: 2, address:"121 rue du Rhin", bedrooms: 1, guests: 2, observations: "lovely house to stay in", picture: url})

url = "http://www.hilltexhomes.com/wp-content/uploads/2013/12/hilltexhomes.jpg"
pethome = Pethome.create({user_id: 3, address:"4 rue du Rhin", bedrooms: 4, guests: 3, observations: "lovely house to stay in", picture: url})



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







