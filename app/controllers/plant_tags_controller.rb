class PlantTagsController < ApplicationController
  def create
    @plant = Plant.find(params[:plant_id])
    @tags = Tag.where(id: params[:plant_tag][:tag])
    @tags.each do |tag|
      plant_tag = PlantTag.new(plant: @plant, tag: tag)
      plant_tag.save
    end
    redirect_to garden_path(@garden)
  end

  private
  def plant_tag_params
    params.require(:plant_tag).permit(:tag_id)
  end
end
