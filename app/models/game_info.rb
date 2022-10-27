class GameInfo

    def self.start_game
        newSession = GameSession.create(session_name: "OUR NEW TEST GAME")
        newGameLevel = GameLevel.create(level_name:"OUR NEW TEST LEVEL", game_session_id: newSession.id, map_data: nil)
        
        newEntities = newGameLevel.api_getEntitiesForSession
        {:newSession => newSession, :newGameLevel => newGameLevel, :entities => newEntities}.to_json
    end


end