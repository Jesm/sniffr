class HomeController < ApplicationController
  def index
    @animals = Animal.all.includes(:user).order(updated_at: :desc)
  end
end
