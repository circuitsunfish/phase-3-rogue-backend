class ApplicationController < Sinatra::Base
    set :default_content_type, 'application/json'

    # get '/entity' do
    #     myentity = Entity.all
    #     myentity.to_json
    # end

    get '/new_game' do
       GameInfo.start_game
    end

    post '/save_game' do
        # binding.pry
        # game_id = GameSession.find(params[:id])
        # gameInfo = GameSession.create(
        #     session_name: params[:id]
        #     player: params[:player],
        #     clown: params[:clown]
        # );

        #this (game_level_id: newGameSession.id,) is not good. TODO: something more reasonable
        newGameSession = GameSession.create(session_name: params[:id]);
        newEntities = Entity.create(game_level_id: newGameSession.id, position_x: params[:player_position_x], position_y: params[:player_position_y], custom_emoji: params[:player_emoji]);
        newGameSession.to_json;
        newEntities.to_json;
    end

    get '/load_game' do
        Entity.api_getSavedPlayersForSession.to_json
    end

#this method will take care of everything, just need the game_level_id of the entity to remove
    post '/delete_saved_game' do
        Entity.api_deleteSavedPlayersOnSession(params[:id])
    end



    # update '/save_game:id' do

    # end

    # get '/get_entities' do
    #     theEntities = Session.first.entities.entity_types
    #     theEntities.to_json
    # end

end