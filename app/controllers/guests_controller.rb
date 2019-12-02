class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def show 
    @guests = Guest.find(params[:id])
  end 
  
end
