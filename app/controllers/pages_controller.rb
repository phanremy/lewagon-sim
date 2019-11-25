class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def rules
    @game = Game.find(params[:game_id])
    @game_event = GameEvent.new
  end
end
