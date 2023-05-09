class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :house

  # validates that the starting_date cannot be later that the ending date

  validate :starting_date_cannot_be_later_than_ending_date

  def starting_date_cannot_be_later_than_ending_date
    return unless starting_date && ending_date && starting_date > ending_date

    errors.add(:starting_date, "can't be later than ending date")
  end
end
