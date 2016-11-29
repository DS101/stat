class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.belongs_to :home_team, index: true
      t.belongs_to :away_team, index: true
      t.integer :home_team_goal
      t.integer :away_team_goal
      t.date :date
      t.timestamps null: false
    end
  end
end
