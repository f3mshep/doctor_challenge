class Rating < ApplicationRecord
  belongs_to :doctor
  after_save :calculate_rating

  def calculate_rating
    # triggers doctor updating average_rating by saving doctor
    self.doctor.save
  end

end
