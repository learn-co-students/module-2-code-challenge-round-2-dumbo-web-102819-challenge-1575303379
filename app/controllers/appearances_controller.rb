class AppearancesController < ApplicationController

    def new 
        @appearance = Appearance.new
      end 
    
      def create 
        @appearance = Appearance.create(appearance_params)
        redirect_to @appearance 
      end 

end
