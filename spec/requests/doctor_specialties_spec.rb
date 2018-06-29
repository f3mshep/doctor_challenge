require 'rails_helper'

RSpec.describe "DoctorSpecialties", type: :request do
  describe "GET /doctor_specialties" do
    it "works! (now write some real specs)" do
      get doctor_specialties_path
      expect(response).to have_http_status(200)
    end
  end
end
