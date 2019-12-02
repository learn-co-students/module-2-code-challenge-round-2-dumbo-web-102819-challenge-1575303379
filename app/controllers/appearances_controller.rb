class AppearancesController < ApplicationController

    def new
        @appearance = Appearance.new 
    end    
    
    def create 
        @appearance = Appearance.create(release_params)
        redirect_to "/episodes/#{@appearance.episode.id}"
    end 

    def release_params
        params.require(:appearance).permit(:episode_id, :guest_id, :rating)
    end 
end
