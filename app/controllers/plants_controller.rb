class PlantsController < ApplicationController
  def new
    @garden = Garden.find(params[:garden_id])
    @plant = Plant.new
  end

  def create
    # 1. Find the garden the plant will be tied to
    @garden = Garden.find(params[:garden_id])
    # 2. Populating an instance of plant with the form data
    @plant = Plant.new(plant_params)
    # 3. Tie the plant to the garden
    @plant.garden = @garden
    # 4. Save the plant
    if @plant.save
    # 4.5 Handle the "happy" path (all good)
      redirect_to garden_path(@garden)
    # 4.5 Handle the "sad" path (all terrible)
    else
      render :new
    end
  end

  def destroy
    @plant = Plant.find(params[:id])
    @plant.destroy

    redirect_to garden_path(@plant.garden)
  end

  private

  def plant_params
    params.require(:plant).permit(:name, :image_url)
  end
end
