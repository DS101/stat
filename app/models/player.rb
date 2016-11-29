class Player < ActiveRecord::Base
  belongs_to :team
  has_many :statistics, dependent: :destroy
end
