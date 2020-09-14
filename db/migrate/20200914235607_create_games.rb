class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :genre
      t.string :game_theme
      t.integer :num_of_players
      t.integer :user_id

      t.timestamps
    end
  end
end
