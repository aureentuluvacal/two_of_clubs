class DropGamePlayers < ActiveRecord::Migration[8.0]
  def change
    drop_table :game_players
  end
end
