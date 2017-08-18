class Booking < ApplicationRecord
  before_create :set_default
  belongs_to :user
  belongs_to :pethome
  has_many :pethome_reviews
  has_many :petsitter_reviews

  def set_default
    self.status ||= "pending"
  end
end
