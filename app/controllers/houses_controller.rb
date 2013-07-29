class HousesController < ApplicationController
  def index
    @houses = House.all
  end

  def show
    @house = House.where(id: params[:id]).first
  end
end
