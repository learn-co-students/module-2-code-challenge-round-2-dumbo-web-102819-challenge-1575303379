class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def new 
    @guest = Guest.new 
  end 

  def create 
    @guest = Guest.new(guest_params)
    if @guest.save 
      redirect_to guest_path(@guest)
    else 
      render :new 
    end 
  end 

  def show
    find_guest 
  end

  def edit 
    find_guest 
  end 

  def update
    find_guest 
    @guest.update(guest_params)
    redirect_to guest_path(@guest)
  end 
  def destroy 
    find_guest 
    @guest.destroy 
    redirect_to guests_path
  end 
  private 

  def find_guest 
    @guest = Guest.find(params[:id])
  end 
  
  def guest_params 
    params.require(:guest).permit(:name, :occupation)
  end 
end
