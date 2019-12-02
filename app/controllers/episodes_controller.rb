class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def show
    @episode = Episode.all.find(params[:id])
  end



  def new
    @episode = Episode.all.find(params[:id])
  end

end
