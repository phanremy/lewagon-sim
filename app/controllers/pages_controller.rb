class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @game = Game.new
  end

  def rules
    @game = Game.find(params[:game_id])
    @game_event = GameEvent.new
  end

  def test_remy
    @games = Game.all

    # Random event by removing occured events
    #@game6 = Game.find(6)
    #@all_possible_events = Event.all
    #@all_events_of_game6 = @game6.game_events.map { |game_event| game_event.event.id }
    #@possible_events_game6_gameevent2 = @all_possible_events.reject { |event| @all_events_of_game6.include?(event.id) }
    #@random_event = @possible_events_game6_gameevent2.sample
  end

  def endgame
    @game = Game.find(params[:game_id])
  end
end
