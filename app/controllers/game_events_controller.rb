class GameEventsController < ApplicationController
  def show
    @game_event = GameEvent.find(params[:game_id])
    @event = Event.find(@game_event.event_id)
    @game = Game.find(params[:id])
  end
    
  def create
    @game_event = GameEvent.new
    @game = Game.find(params[:game_id])
    @game_event.game = @game
    @game_event.event = Event.first # To be modified
    @game_event.save
    redirect_to game_game_event_path(@game.id, @game_event)
  end

  private

  def game_event_params
    params.permit(:game_id)

  end
end
