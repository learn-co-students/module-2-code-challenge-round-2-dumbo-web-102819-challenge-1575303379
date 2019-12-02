class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end
  def show
    find_episode 
  end
  def new 
    @episode = Episode.new 
  end 
  def create 
    @episode = Episode.new(episode_params)
    if @episode.save 
      redirect_to episode_path(@episode)
    else 
      render :new 
    end 
  end 
  def edit 
    find_episode 
  end 
  def update 
    find_episode 
    @episode.update(episode_params)
    redirect_to episode_path(@episode)
  end 
  def destroy 
    find_episode 
    @episode.destroy 
    redirect_to episodes_path
  end 

  



  private 
  def find_episode
    @episode = Episode.find(params[:id])
  end 
  def episode_params 
    params.require(:episode).permit(:date, :number)
  end 

end
