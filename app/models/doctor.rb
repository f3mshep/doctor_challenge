class Doctor < ApplicationRecord

  has_many :ratings
  has_many :doctor_specialties
  has_many :specialties, through: :doctor_specialties
  before_save :calculate_rating

  def as_json(options={})
    super(include:  { specialties: {only: :name}})
  end

  def calculate_rating
    # handles calculating average rating
    total = 0
    self.ratings.each do |rating|
      total += rating.score
    end
    total = total.to_f / (self.ratings.size).to_f
    self.average_score = total
    total
  end

  def self.find_related(doctor)
    # finds doctors similiar to doctor
    # similarity is based on primary(first) specialty, ordered by rating
  end

end
