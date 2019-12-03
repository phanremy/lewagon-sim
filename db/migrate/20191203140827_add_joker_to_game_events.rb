class AddJokerToGameEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :game_events, :joker, :boolean, default: false
  end
end
