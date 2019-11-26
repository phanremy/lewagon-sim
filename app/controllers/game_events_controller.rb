class GameEventsController < ApplicationController
  def show
    @game_event = GameEvent.find(params[:id])
    @event = Event.find(@game_event.event_id)
    @game = Game.find(params[:game_id])
  end

  def create
    @game_event = GameEvent.new
    @game = Game.find(params[:game_id])
    @game_event.game = @game
    # Start randomizing
    @all_possible_events = Event.all
    @random_event = @all_possible_events.sample
    # End randomizing by removing event that happened (to be updated in method Update)

    @game_event.event = @random_event
    @game_event.save
    redirect_to game_game_event_path(@game.id, @game_event)
  end

  def update
    @game_event = GameEvent.find(params[:id])
    @game_event.choice_id = params[:game_event][:choice_id]
    @game_event.game.stress += @game_event.choice.stress_impact
    @game_event.game.score += @game_event.choice.score_impact
    @game_event.game.save
    @game_event.save
    redirect_to game_game_event_path
  end

  private

  def game_event_params
    params.permit(:game_id)
  end
end
