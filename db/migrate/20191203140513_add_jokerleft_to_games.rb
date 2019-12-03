class AddJokerleftToGames < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :joker_left, :integer, default: 3
  end
end
