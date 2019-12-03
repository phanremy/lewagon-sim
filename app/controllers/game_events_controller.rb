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
    @game_event.joker = true if @game.game_events.last.joker_next
    # ONE OF THE NEXT METHOD HAS TO BE SELECTED, THE OTHER COMMENTED
    # Event in random order (can repeat)
    @game_event.event = event_random

    # Event in random order (will not repeat, to use when we have enough events in real production usage)
    # @game_event.event = event_random_no_repeat

    # Event in sequence
    # @game_event.event = event_in_sequence

    # END

    @game_event.save

    redirect_to game_game_event_path(@game.id, @game_event)
  end

  def update
    @game_event = GameEvent.find(params[:id])
    @game_event.choice_id = params[:game_event][:choice_id]
    @game_event.game.stress += @game_event.choice.stress_impact

    if @game_event.joker
      @game_event.game.score += (@game_event.choice.score_impact * 2)
    else
      @game_event.game.score += @game_event.choice.score_impact
    end
    @game_event.game.save
    @game_event.save
    redirect_to game_game_event_path
  end

  def joker
    @game_event = GameEvent.find(params[:game_event_id])
    @game = @game_event.game
    if ((@game.joker_left > 0) && (@game_event.joker_next == false))
      @game.joker_left -= 1
      @game_event.joker_next = true
      @game.save
      @game_event.save
    end
    redirect_to game_game_event_path(@game, @game_event)
  end

  private

  def game_event_params
    params.permit(:game_id)
  end

  def event_in_sequence
    @next_event_offset = @game.game_events.length
    @next_event = Event.find(Event.offset(@next_event_offset).limit(1).ids.join)
    return @next_event
  end

  def event_random
    @all_possible_events = Event.all
    @random_event = @all_possible_events.sample
    return @random_event
  end

  def event_random_no_repeat
    @all_possible_events = Event.all
    @all_events_of_game = @game.game_events.map { |game_event| game_event.event.id }
    @possible_next_events_of_game = @all_possible_events.reject { |event| @all_events_of_game.include?(event.id) }
    @random_event_remaining = @possible_next_events_of_game.sample
    return @possible_next_events_of_game.sample
  end
end
