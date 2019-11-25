class GameEvent < ApplicationRecord
  belongs_to :game
  belongs_to :choice, optional: true
  belongs_to :event
end
