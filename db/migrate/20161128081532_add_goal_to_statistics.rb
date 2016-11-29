class AddGoalToStatistics < ActiveRecord::Migration
  def change
    add_column :statistics, :goal, :integer
  end
end
