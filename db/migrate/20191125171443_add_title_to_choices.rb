class AddTitleToChoices < ActiveRecord::Migration[5.2]
  def change
    add_column :choices, :title, :string
  end
end
