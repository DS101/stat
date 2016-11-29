class Event < ActiveRecord::Base
  belongs_to :game
  KIND_OF_EVENT = %w(goal substitute foul yellow_card red_card).freeze
end
