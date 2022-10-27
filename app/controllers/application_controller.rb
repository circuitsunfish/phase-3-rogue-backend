class ApplicationController < Sinatra::Base
    set :default_content_type, 'application/json'

    # get '/entity' do
    #     myentity = Entity.all
    #     myentity.to_json
    # end

    get '/new_game' do
       GameInfo.start_game
    end

    # get '/get_entities' do
    #     theEntities = Session.first.entities.entity_types
    #     theEntities.to_json
    # end

end