class GameSession < ApplicationRecord
  validates_presence_of :game_id, :player_id
  validates :entry_code, length: { maximum: 8 }

  scope :active, -> () { where(active: true) }
  scope :for_game, ->(game) { where(game: game) }
  scope :for_player, ->(player) { where(player: player) }

  belongs_to :game
  belongs_to :player

  def game_name
    return if game.nil?

    game.name
  end
end
