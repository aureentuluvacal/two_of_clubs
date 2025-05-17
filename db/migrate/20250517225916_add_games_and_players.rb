class AddGamesAndPlayers < ActiveRecord::Migration[8.0]
  def change
    create_table :games do |t|
      t.string :name

      t.timestamps
    end

    create_table :players do |t|
      t.string :name

      t.timestamps
    end

    create_table :game_sessions do |t|
      t.references :game, index: true
      t.references :player, index: true
      t.boolean :active, default: false, null: false
      t.string :entry_code


      t.timestamps
    end

    add_index :game_sessions, [ :game_id, :player_id ]
  end
end
