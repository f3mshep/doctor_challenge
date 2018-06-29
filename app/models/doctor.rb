class Doctor < ApplicationRecord
  has_many :ratings
  has_many :specialties
end
