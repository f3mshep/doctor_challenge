class RatingsController < ApplicationController
  before_action :set_rating, only: [:show, :update, :destroy]

  # GET doctors/1/ratings
  def index
    @ratings = Rating.all

    render json: @ratings
  end

  # GET doctors/1/ratings/1
  def show
    render json: @rating
  end

  # POST /doctors/1/rating
  def create
    #nested resource
    @rating = Rating.new(rating_params)
    @doctor =
    if @rating.save
      render json: @rating, status: :created, location: @rating
    else
      render json: @rating.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /doctors/1/ratings/1
  def update
    if @rating.update(rating_params)
      render json: @rating
    else
      render json: @rating.errors, status: :unprocessable_entity
    end
  end

  # DELETE /doctors/1/ratings/1
  def destroy
    @rating.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rating
      @rating = Rating.find(params[:id])
    end

    def set_doctor
      @doctor = Doctor.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def rating_params
      params.require(:rating).permit(:score, :review_text, :doctor_id)
    end
end
