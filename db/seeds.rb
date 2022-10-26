#####
sample_map_1 = <<-MAP
1111111111
1000000001
1000000001
1000000001
1000000001
1000000001
1000000001
1000000001
1000000001
1111111111
MAP

sample_map_2 = <<-MAP
1111111111
1000000001
1000000001
1111111001
1000000001
1000000001
1001111111
1000000001
1000000001
1111111111
MAP

sample_map_3 = <<-MAP
1111111111
1000100001
1000100001
1000100001
1000100001
1000000001
1000000001
1001000001
1001000001
1111111111
MAP

#####
puts "removing old data..."
EntitiesHaveType.destroy_all
Entity.destroy_all
EntityType.destroy_all
GameLevel.destroy_all
GameSession.destroy_all

puts "done removing"
###########


#########
puts "seeding all tables"
##########

###
puts "seeding session"

gs_a = GameSession.create(session_name: "test1")
gs_b = GameSession.create(session_name: "test2")
gs_c = GameSession.create(session_name: "test3")

puts "end session"
###
puts "seeding level"

gl_a = GameLevel.create(level_name: "a", game_session_id: 1, map_data: sample_map_1)
gl_b = GameLevel.create(level_name: "b", game_session_id: 1, map_data: sample_map_2)
gl_c = GameLevel.create(level_name: "c", game_session_id: 2, map_data: sample_map_3)
gl_d = GameLevel.create(level_name: "d", game_session_id: 2, map_data: sample_map_1)
gl_e = GameLevel.create(level_name: "e", game_session_id: 3, map_data: sample_map_2)
gl_f = GameLevel.create(level_name: "f", game_session_id: 3, map_data: sample_map_3)

puts "end level"
###
puts "seeding entity types"

et_a = EntityType.create(entity_type_name: "fighter", can_move: 1, can_attack: 1, is_player: 1, dead_player: 0, ends_level: 0, default_emoji: "😎", default_attack: 5, default_speed: 1, default_hp: 10)
et_b = EntityType.create(entity_type_name: "clown", can_move: 1, can_attack: 1, is_player: 0, dead_player: 0, ends_level: 0, default_emoji: "🤡", default_attack: 3, default_speed: 1, default_hp: 5)
et_c = EntityType.create(entity_type_name: "bed", can_move: 0, can_attack: 0, is_player: 0, dead_player: 0, ends_level: 1, default_emoji: "🛌", default_attack: 0, default_speed: 0, default_hp: 0)
et_c = EntityType.create(entity_type_name: "bones", can_move: 1, can_attack: 1, is_player: 0, dead_player: 1, ends_level: 0, default_emoji: "💀", default_attack: 5, default_speed: 1, default_hp: 10)


puts "end entity types"
###

puts "seeding entity"

e_a = Entity.create(game_level_id: 1, position: "1,1", custom_emoji: nil, attack_stat: nil, speed_stat: nil, hp_stat: nil)
e_b = Entity.create(game_level_id: 1, position: "5,9", custom_emoji: nil, attack_stat: nil, speed_stat: nil, hp_stat: nil)
e_c = Entity.create(game_level_id: 1, position: "1,5", custom_emoji: nil, attack_stat: nil, speed_stat: nil, hp_stat: nil)
e_e = Entity.create(game_level_id: 2, position: "1,1", custom_emoji: nil, attack_stat: nil, speed_stat: nil, hp_stat: nil)
e_f = Entity.create(game_level_id: 2, position: "5,9", custom_emoji: nil, attack_stat: nil, speed_stat: nil, hp_stat: nil)
e_g = Entity.create(game_level_id: 2, position: "1,5", custom_emoji: nil, attack_stat: nil, speed_stat: nil, hp_stat: nil)
e_h = Entity.create(game_level_id: 3, position: "1,1", custom_emoji: nil, attack_stat: nil, speed_stat: nil, hp_stat: nil)
e_i = Entity.create(game_level_id: 3, position: "5,9", custom_emoji: nil, attack_stat: nil, speed_stat: nil, hp_stat: nil)
e_j = Entity.create(game_level_id: 3, position: "1,5", custom_emoji: nil, attack_stat: nil, speed_stat: nil, hp_stat: nil)
puts "end entity"
###

puts "seeding entity have types"

eht_a = EntitiesHaveType.create(entity_id: 1, entity_type_id: 1)
eht_b = EntitiesHaveType.create(entity_id: 2, entity_type_id: 2)
eht_c = EntitiesHaveType.create(entity_id: 3, entity_type_id: 3)
eht_e = EntitiesHaveType.create(entity_id: 4, entity_type_id: 1)
eht_f = EntitiesHaveType.create(entity_id: 5, entity_type_id: 2)
eht_g = EntitiesHaveType.create(entity_id: 6, entity_type_id: 3)
eht_h = EntitiesHaveType.create(entity_id: 7, entity_type_id: 1)
eht_i = EntitiesHaveType.create(entity_id: 8, entity_type_id: 2)
eht_j = EntitiesHaveType.create(entity_id: 9, entity_type_id: 3)
puts "end entity have types"
###

#######
puts "done seeding"
#####