class EpisodeGuestsController < ApplicationController
	def new
  		@episode_guest = EpisodeGuest.new
  	end

  	def create
  		#byebug
  		white_list = params[:episode_guest].permit(:guest_id, :episode_id, :rating, values: 0)
	  	@data = EpisodeGuest.new(white_list)

	  	#TODO: create the validation from the models
	  	#^ Check to see if rating exist
	    if @data.valid?
	      @data.save

	      redirect_to episode_path(white_list[:episode_id])
	    else
	      @episode_guest = EpisodeGuest.new
	      render :new
	    end
	end
end
