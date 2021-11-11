class Tag < ApplicationRecord
  validates :name, presence: true

  has_many :plant_tags
  has_many :plants, through: :plant_tags
end
