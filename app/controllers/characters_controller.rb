class CharactersController < ApplicationController
 def index
   @characters = Character.all
 end

 def show
   @character = Character.find(params[:id])
 end

 def new
   @character = Character.new
 end

 def create
     @house = House.find(params[:house_id])
     @character = @house.characters.create!(character_params)
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

 private

 def character_params
   params.require(:character).permit(:name, :house)

 end
end
