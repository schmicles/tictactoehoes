class Player < ActiveRecord::Base
  has_many :player_games
  has_many :games, through: :player_games

  validates :username, uniqueness: true, presence: true
end
