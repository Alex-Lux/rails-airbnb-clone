class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :pethome
  has_many :pethome_reviews
  has_many :petsitter_reviews
end
