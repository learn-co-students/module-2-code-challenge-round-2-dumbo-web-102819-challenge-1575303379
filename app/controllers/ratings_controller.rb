class RatingsController < ApplicationController
    def new
        @rating = Rating.new
    end

    def create
        rating = Rating.create(rating_params)
        
        if rating.save
            redirect_to episode_path(rating.episode)
        else
            flash[:errors] = rating.errors.full_messages
            redirect_to new_rating_path
        end
    end

    private 
    
    def rating_params
        params.require(:rating).permit(:guest_id, :episode_id, :rating)
    end
end
