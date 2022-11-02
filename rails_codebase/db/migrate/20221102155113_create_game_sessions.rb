class CreateGameSessions < ActiveRecord::Migration[7.0]
  def change
    create_table :game_sessions do |t|
      t.string :session_player_name

      t.timestamps
    end
  end
end
