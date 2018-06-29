class Doctor < ApplicationRecord
  has_many :ratings
  has_many :specialties

  attr_accessor :average_rating

  def calculate_rating
    total = 0
    self.ratings.each do |rating|
      total += rating.score
    end
    total = total / self.ratings.size
    average_rating = total
    total
  end

end
