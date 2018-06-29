require "rails_helper"

RSpec.describe DoctorSpecialtiesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/doctor_specialties").to route_to("doctor_specialties#index")
    end


    it "routes to #show" do
      expect(:get => "/doctor_specialties/1").to route_to("doctor_specialties#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/doctor_specialties").to route_to("doctor_specialties#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/doctor_specialties/1").to route_to("doctor_specialties#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/doctor_specialties/1").to route_to("doctor_specialties#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/doctor_specialties/1").to route_to("doctor_specialties#destroy", :id => "1")
    end

  end
end
