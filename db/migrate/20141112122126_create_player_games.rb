class CreatePlayerGames < ActiveRecord::Migration
  def change
    create_table :player_games do |t|
      t.integer  :player_id
      t.integer  :game_id
      t.boolean  :winner?, default: false

      t.timestamps
    end
  end
end
