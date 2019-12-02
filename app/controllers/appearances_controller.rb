class Appearance.create(rating:5)Controller < ApplicationController
   def index 
   @appearance = Apperance.all
end 
def new 
    @apperance.find(params[:id])
end 

def create 
    @apperance = Apperance.new params.require(:guest, :episode).permit(:rating)
    @apperance.save
    redirect_to episode_path
end 



end
