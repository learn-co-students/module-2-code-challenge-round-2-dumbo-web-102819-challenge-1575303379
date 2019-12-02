class AppearancesController < ApplicationController


    # def index
    #     @appearances = Appearance.all
    #   end
    
      def new
        @appearance = Appearance.new
      end

      def create
      
        appearance = Appearance.create(params.require(:appearance).permit(:guest, :episode, :guest_rating)

        # redirect_to "/episode" 
        # #this part of my code isnt working
      end
      
      # def show
      #   @appearance = Appearance.all.find(params[:id])
      # end
    
      
    
end
