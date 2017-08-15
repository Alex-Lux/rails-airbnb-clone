# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


url = "https://www.pets4homes.co.uk/images/articles/2666/large/predicting-the-colour-of-labrador-retriever-puppies-54f44cee7979e.jpg"
pet = Pet.create({name: "Fido", pethome_id: 1, category: "dog", breed: "labrador", weight: "20kg", size: "medium", color: "golden" })
pet.save
pet.photo_url = url

url = "https://i.ytimg.com/vi/PXlDWtCh3IU/maxresdefault.jpg"
pet = Pet.create({name: "Bob", pethome_id: 2, category: "dog", breed: "bulldog", weight: "10kg", size: "small", color: "white" })
pet.save
pet.photo_url = url

url = "https://img.dog-learn.com/dog-breeds/smooth-fox-terrier/smooth-fox-terrier-i5.jpg"
pet = Pet.create({name: "Becky", pethome_id: 3, category: "dog", breed: "fox terrier", weight: "8kg", size: "small", color: "tri color" })
pet.save
pet.photo_url = url
# url = ""
# pet = Pet.create({breed: "bulldog", weight: "10kg", size: "small", color: "white" })
# pet.save!
# pet.photo_url = url


user = User.create({email:"j@jjhhf.com", password: 123456})
user.save
#User.all

user = User.create({email:"jfjfjf@jjdjf.com", password: 123456})
user.save

user = User.create({email:"beebob.com", password: 12456})
user.save

url = "https://static.pexels.com/photos/106399/pexels-photo-106399.jpeg"
pethome = Pethome.create({user_id: 1, address:"1 rue du Rhin", bedrooms: 2, guests: 4, observations: "lovely house to stay in"})
pethome.save
pethome.picture_url = url

pethome = Pethome.create({user_id: 2, address:"121 rue du Rhin", bedrooms: 1, guests: 2, observations: "lovely house to stay in"})
pethome.save

pethome = Pethome.create({user_id: 3, address:"4 rue du Rhin", bedrooms: 4, guests: 3, observations: "lovely house to stay in"})
pethome.save


pethome_review = PethomeReview.create({booking_id: 1, rating: 3, comment: "greaaaat"})
pethome_review.save

pethome_review = PethomeReview.create({booking_id: 2, rating: 4, comment: "fabulous time"})
pethome_review.save

pethome_review = PethomeReview.create({booking_id: 3, rating: 5, comment: "fabulous"})
pethome_review.save


petsitter_review = PetsetterReview.create({booking_id: 1, rating: 4})
petsitter_review.save

petsitter_review = PetsetterReview.create({booking_id: 2, rating: 5})
petsitter_review.save

petsitter_review = PetsetterReview.create({booking_id: 3, rating: 2})
petsitter_review.save


booking = Booking.create({starting_date: Date.new(2017, 8, 29), ending_date: 2018-08-15, user_id: 1, pethome_id: 1})
booking.save

booking = Booking.create({starting_date: 12/08/2018, ending_date: 2018-08-15, user_id: 2, pethome_id: 2})
booking.save

booking = Booking.create({starting_date: 13/08/2018, ending_date: 2018-08-15, user_id: 3, pethome_id: 3})
booking.save


# Pethome.last.pethome_reviews

# Booking.create(user_id:2, pethome_id:1)







