class BoatsController < ApplicationController
  before_action :set_boat, only: [:show]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @boats = Boat.all
    # @markers = @boats.geocoded.map do |boat|
    #   {
    #     lat: boat.latitude,
    #     lng: boat.longitude,
    #     # info_window: render_to_string(partial: "info_window", locals: {boat: boat})

    #   }
  end

  def show
    @marker =
      {
        lat: @boat.latitude,
        lng: @boat.longitude,
        # info_window: render_to_string(partial: "info_window", locals: {boat: @boat})
      }
  end

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

  def destroy
    boat = Boat.find(params[:id])
    boat.destroy

    redirect_to profile_path, status: :see_other
  end

  def edit; end

  def update
    @boat = Boat.find(params[:id])

    if @boat.update(boat_params)
      redirect_to boat_path(@boat)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def boat_params
    params.require(:boat).permit(:name, :description, :price, :number_of_people, :address, photos: [])
  end

  def set_boat
    @boat = Boat.find(params[:id])
  end
end
