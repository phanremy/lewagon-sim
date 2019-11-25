class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @game = Game.new
  end
end
