class CreateGameSessions < ActiveRecord::Migration[6.1]
  def change
    create_table :game_sessions do |t|
    t.text :session_name
    end
  end
end
