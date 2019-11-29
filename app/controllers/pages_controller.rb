class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @game = Game.new
    @game_event = GameEvent.new
    if current_user
      @user = current_user
      @game.user = @user
      @game.save
      @game_event.game = @game
      @event = Event.all.sample
      @game_event.event = @event
      # @game_event.save
    else
      redirect_to new_user_session_path
    end
  end

  def rules
    @game = Game.find(params[:game_id])
    @game_event = GameEvent.new
  end

  def test_remy
    @game = Game.first
    @game_event = GameEvent.new
    @game_event.game = @game
    @event = Event.all.sample
    @game_event.event = @event
    @game_event.save
    # Random event by removing occured events
    # @game6 = Game.find(6)
    # @all_possible_events = Event.all
    # @all_events_of_game6 = @game6.game_events.map { |game_event| game_event.event.id }
    # @possible_events_game6_gameevent2 = @all_possible_events.reject {|event| @all_events_of_game6.include?(event.id)}
    # @random_event = @possible_events_game6_gameevent2.sample
  end

  def endgame
    @game = Game.find(params[:game_id])
    @user = @game.user
    @user_games = Game.where(user: @user)
    @own_best_score = @user_games.maximum(:score)
    @best_score_ever = Game.maximum(:score)
  end
end
