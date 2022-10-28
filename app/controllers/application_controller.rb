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
        newGameSession = GameSession.create(session_name: params[:id]);
        newEntities = Entity.create(game_level_id: newGameSession.id, position_x: params[:player_position_x], position_y: params[:player_position_y], custom_emoji: params[:player_emoji]);
        newGameSession.to_json;
        newEntities.to_json;
    end

    post '/load_game' do
        "{response: 'load game endpoint'}".to_json
    end

    # update '/save_game:id' do

    # end

    # get '/get_entities' do
    #     theEntities = Session.first.entities.entity_types
    #     theEntities.to_json
    # end

end