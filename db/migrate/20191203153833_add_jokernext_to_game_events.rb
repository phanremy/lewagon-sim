class AddJokernextToGameEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :game_events, :joker_next, :boolean, default: false
  end
end
