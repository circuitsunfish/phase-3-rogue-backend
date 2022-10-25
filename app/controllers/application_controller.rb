

class ApplicationController < Sinatra::Base
    set :default_content_type, 'application/json'

    # get '/entity' do
    #     myentity = Entity.all
    #     myentity.to_json
    # end

    get '/start_game' do
        newGame = GameSession.create(session_name: "OUR NEW TEST GAME")
        newGame.to_json
    end
end