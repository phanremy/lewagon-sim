class Choice < ApplicationRecord
  belongs_to :event
  has_many :game_events
end
