class PlayersController < ApplicationController
  def index
    @player = Player.order("RANDOM()").first
  end
  
  def create
     @player = Player.create(player_params)
  if @player.invalid?
    flash[:error] = '<strong>Could not save</strong> the data you entered is invalid.'
  end
    redirect_to root_path
  end

  private

  def player_params
    params.require(:player).permit(:name, :position)
  end
end