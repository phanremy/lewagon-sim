class Event < ApplicationRecord
  has_many :choices, dependent: :destroy
  has_many :game_events, dependent: :destroy
end
