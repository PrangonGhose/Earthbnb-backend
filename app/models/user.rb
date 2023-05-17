class User < ApplicationRecord
  has_many :reservations, dependent: :destroy

  # validates that username must have at least a length of 5 characters and at least one letter

  validates :username, presence: true, length: { minimum: 5, message: 'Username must have at least five characters' },
                       format: { with: /\A.*[a-zA-Z].*\z/, message: 'Username must include at least one letter' }
end
