class CreateGamePlayers < ActiveRecord::Migration[8.0]
  def change
    create_table :game_players do |t|
      t.references :game
      t.references :player
      t.references :game_session
      t.string :scores
      t.timestamps
    end
  end
end
