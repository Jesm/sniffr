class AnimalsController < ApplicationController
  before_action :require_user

  def new
    @animal = current_user.animals.new
  end

  def create
    @animal = current_user.animals.new(animal_params)
    if @animal.save
      redirect_to home_path
    else
      render 'animals/new'
    end
  end

  protected
    def animal_params
      params.require(:animal).permit(:name, :size, :species, :breed, :birth_date)
    end
end
