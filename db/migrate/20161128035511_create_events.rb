class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.belongs_to :game, index: true
      t.string :kind
      t.string :logo
      t.integer :time
      t.string :score
      t.text :description
      t.timestamps null: false
    end
  end
end
