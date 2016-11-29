class Event < ActiveRecord::Base
  belongs_to :game
  KIND_OF_EVENT = %w(goal substitute foul yellow_card red_card).freeze

  def logo
  	return "/yellow_card.jpeg" if self.kind == "yellow_card"
  	return "/red_card.jpeg" if self.kind == "red_card"
  	return "/goal.jpeg" if self.kind == "goal"
  end
end
