class RentalsController < ApplicationController
  before_action :authenticate_user!
  def index
    # get the rentals that the logged in user has made
    @rentals = Rental.where(user: current_user)
  end

  def show
  end

  def new
    @rental = Rental.new
    @rental.video = Video.find(params[:video_id])
  end
end
