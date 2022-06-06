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
    @character = Character.new(params_character)
    @character.save
  end

  def edit
    @character = Character.find(params[:id])
  end

  def update
    @character = Character.find(params[:id])
    @character.update
  end

  def destroy
    @character = Character.find(params[:id])

  end

  private

  def params_character
    params.require(:character).permit(:name, :power, :planet, :description, :sayan)
  end

end
