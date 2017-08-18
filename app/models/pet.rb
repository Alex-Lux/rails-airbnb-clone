class Pet < ApplicationRecord
  belongs_to :pethome
  mount_uploader :photo, PhotoUploader

  def self.default_url
    "https://i.ytimg.com/vi/SfLV8hD7zX4/maxresdefault.jpg"
  end
end
