class Game < ActiveRecord::Base
  belongs_to :home_team, :class_name => :team
  belongs_to :away_team, :class_name => :team
  has_many :events, -> { order time: :asc } 

  def title
    return "#{self.date.strftime("%d-%m-%Y")} #{Team.find(self.home_team_id).title} #{self.home_team_goal}:#{self.away_team_goal} #{Team.find(self.away_team_id).title}"
  end
end
