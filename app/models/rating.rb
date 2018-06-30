class Rating < ApplicationRecord
  belongs_to :doctor
  after_save :calculate_rating
  validates :score, numericality: true
  validates :score, numericality: { less_than_or_equal_to: 5 }
  validates :score, numericality: { greater_than_or_equal_to: 1 }

  def calculate_rating
    # triggers doctor updating average_rating by saving doctor
    self.doctor.save
  end

end
