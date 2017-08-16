class PetsController < ApplicationController

  def create
    @pet = Pet.new(pet_params)
    @pet.user = User.find(params[:user_id])
    @pet.save
  end



private
  def pet_params
  params.require(:pet).permit(:content)
  end
end
