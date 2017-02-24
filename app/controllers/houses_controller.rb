class HousesController < ApplicationController

  def index
   @houses = House.all
  end

  def show
   @house = House.find(params[:id])
  end

  def create
    @house = House.create!(house_params)
    redirect_to @house
  end

  def update
     @house = House.find(params[:house_id])
     @character = Character.find(params[:id])
     @character.update(character_params)
     redirect_to house_path(@house)
   end

   def destroy
     @house = House.find(params[:house_id])
     @character = Character.find(params[:id])
     @character.destroy
     redirect_to @house
   end

end
