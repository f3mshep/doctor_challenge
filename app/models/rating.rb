class Rating < ApplicationRecord
  belongs_to :doctor
  after_save :calculate_rating

  def calculate_rating
    # calculates the doctor's rating after this rating is saved
    self.doctor.save
  end

end
