class User < ApplicationRecord
  has_many :pethomes
  has_many :bookings
  has_many :petsitter_reviews, through: :bookings
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  mount_uploader :photo, PhotoUploader
end
