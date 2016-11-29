class CreateStatistics < ActiveRecord::Migration
  def change
    create_table :statistics do |t|
      t.belongs_to :player, index: true
      t.belongs_to :game, index: true
      t.integer :shot
      t.integer :on_target
      t.integer :game_time
      t.integer :assist
      t.integer :pass
      t.timestamps null: false
    end
  end
end
