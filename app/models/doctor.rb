class Doctor < ApplicationRecord

  has_many :ratings
  has_many :specialties

  def calculate_rating
    # handles calculating average rating
    total = 0
    self.ratings.each do |rating|
      total += rating.score
    end
    total = total.to_f / (self.ratings.size).to_f
    average_rating = total
    total
  end

end
