class GamesController < ApplicationController
  def create
    @game = Game.new(game_params)
    @game.save
    redirect_to game_game_event_path(@game_event)
  end

  private

  def game_params
    params.require(:game).permit(:user_id)
  end
end
