class Player < ApplicationRecord
  validates_presence_of :name

  has_many :game_sessions
end
