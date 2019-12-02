class AppearancesController < ApplicationController
    def new
        @appearance = Appearance.new
    end

    def create
        app = Appearance.create(rating: p[:rating], guest_id: p[:guest], episode_id: p[:episode])
        if app.valid?
            redirect_to Episode.find(p[:episode])
        else
            redirect_to new_appearance_path
        end
    end

    private

    def p
        params.require(:appearance).permit(:guest, :episode, :rating)
    end
end
