class Team < ActiveRecord::Base
  has_many :players
  has_many :home_games, :foreign_key => :home_team_id, :class_name => :games
  has_many :away_games, :foreign_key => :away_team_id, :class_name => :games
  validates :title, presence:true, uniqueness: true
end
