class PetsController < ApplicationController

  def create
    @pet = Pet.new(pet_params)
    @pethome = Pethome.find(params[:pethome_id])
    @pet.pethome = @pethome
    @pet.save
    redirect_to @pethome
  end


private
  def pet_params
  params.require(:pet).permit(:name, :breed, :color, :weight, :category, :observations, :size, :photo, :photo_cache)
  end
end
