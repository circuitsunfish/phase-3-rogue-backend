class GameLevel < ActiveRecord::Base
    belongs_to :game_session
    has_many :entities


def api_getEntitiesForSession
   player = Entity.create(game_level_id: self.id, position:nil, custom_emoji: nil, attack_stat: nil, speed_stat: nil, hp_stat: nil)
   player.getPlayerEntityTypesForSession

   clown = Entity.create(game_level_id: self.id, position:nil, custom_emoji: nil, attack_stat: nil, speed_stat: nil, hp_stat: nil)
   clown.getClownEntityTypesForSession

   bed = Entity.create(game_level_id: self.id, position:nil, custom_emoji: nil, attack_stat: nil, speed_stat: nil, hp_stat: nil)
   bed.getBedEntityTypesForSession

   part_1 = {:self => player, :inherited_from_types_arr => player.entity_types}
   part_2 = {:self => clown, :inherited_from_types_arr => clown.entity_types}
   part_3 = {:self => bed, :inherited_from_types_arr => bed.entity_types}

   response = {:player => part_1, :clown => part_2, :bed => part_3}
end

end