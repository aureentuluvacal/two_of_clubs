class Game < ApplicationRecord
  GAME_NAMES = [
    :five_crowns
  ].freeze
  
  GAME_NAME_MAP = {
    five_crowns: "Five Crowns"
  }.freeze

  validates_presence_of :name
  validates :name, inclusion: { in: GAME_NAMES }

  has_many :game_sessions
  has_many :players, through: :game_sessions
end
