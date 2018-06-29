class SpecialtiesController < ApplicationController
  before_action :set_specialty, only: [:show, :update, :destroy]

  # GET /doctors/1/specialties
  def index
    @specialties = Specialty.all

    render json: @specialties
  end

  # GET /doctors/1/specialties/1
  def show
    render json: @specialty
  end

  # POST /doctors/1/specialties
  def create
    @specialty = Specialty.new(specialty_params)

    if @specialty.save
      render json: @specialty, status: :created, location: @specialty
    else
      render json: @specialty.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /doctors/1/specialties/1
  def update
    if @specialty.update(specialty_params)
      render json: @specialty
    else
      render json: @specialty.errors, status: :unprocessable_entity
    end
  end

  # DELETE /doctors/1/specialties/1
  def destroy
    @specialty.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_specialty
      @specialty = Specialty.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def specialty_params
      params.require(:specialty).permit(:name, :doctor_id)
    end
end
