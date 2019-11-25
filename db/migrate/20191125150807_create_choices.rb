class CreateChoices < ActiveRecord::Migration[5.2]
  def change
    create_table :choices do |t|
      t.references :event, foreign_key: true
      t.text :description
      t.integer :score_impact
      t.integer :stress_impact

      t.timestamps
    end
  end
end
