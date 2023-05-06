class House < ApplicationRecord
  has_many :reservations, dependent: :destroy

  # validates presence of each parameter and their property

  validates :house_name, :address, :rooms, :beds, :picture, :price_by_night, :description, presence: true
  validates :rooms, :beds, numericality: { only_integer: true, greater_than: 0 }
  validates :price_by_night, numericality: { greater_than: 0 }
end
