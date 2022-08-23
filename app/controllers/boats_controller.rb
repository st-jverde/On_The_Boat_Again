class BoatsController < ApplicationController
  before_action :set_boat, only: [:show]

  def index
    @boats = Boat.all
  end

  def show; end

  def new
    @boat = Boat.new
  end

  def create
    @boat = Boat.new(boat_params)
    @boat.user = current_user
  
    if @boat.save
      redirect_to boat_path(@boat)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def boat_params
    params.require(:boat).permit(:name, :description, :price)
  end

  def set_boat
    @boat = Boat.find(params[:id])
  end
end
