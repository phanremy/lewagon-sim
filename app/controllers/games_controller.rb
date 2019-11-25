class GamesController < ApplicationController
  def create
    @game = Game.new
    @game.user = current_user
    if @game.save
      flash[:alert] = "Your game has been created."
      redirect_to game_rules_path(@game)
    else
      render :new
    end
  end

end
