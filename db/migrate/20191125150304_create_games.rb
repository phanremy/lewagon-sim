class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.references :user, foreign_key: true
      t.integer :score, default: 0
      t.integer :stress, default: 0
      t.timestamps
    end
  end
end
