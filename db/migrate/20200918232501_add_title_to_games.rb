class AddTitleToGames < ActiveRecord::Migration[6.0]
  def change
    add_column :games, :title, :text
  end
end
