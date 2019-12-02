class EpisodeGuestsController < ApplicationController

    def new
        @episode_guest = EpisodeGuest.new(params[:id])
    end

    def create 
        episode_guest = EpisodeGuest.create(episode_guest_params)
        redirect_to "/episodes/#{episode_guest.episode_id}"
    end

    private 

    def episode_guest_params
        params.require(:episode_guest).permit(:episode_id, :guest_id, :rating)
    end

end
