class AppearancesController < ApplicationController

        def new
            @appearance = Appearance.new
        end
    
        def create 
            @appearance = Appearance.new(appear_params)
            redirect_to "/episodes/#{@appearance.episode.id}"
            
        end 
    
        private 
    
        def appear_params 
            params.require(:appearance).permit(:guest_id, :episode_id, :rating)
        end 
    
end
