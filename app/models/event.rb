class Event < ApplicationRecord
  has_many :choices
  has_many :game_events
end
