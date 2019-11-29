class AddImageUrlToChoices < ActiveRecord::Migration[5.2]
  def change
    add_column :choices, :image_url, :string
  end
end
