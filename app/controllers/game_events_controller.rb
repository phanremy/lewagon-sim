class GameEventsController < ApplicationController
  def show
    @game_event = GameEvent.find(params[:game_id])
    @event = Event.find(@game_event.event_id)
    @game = Game.find(params[:id])
  end
end
