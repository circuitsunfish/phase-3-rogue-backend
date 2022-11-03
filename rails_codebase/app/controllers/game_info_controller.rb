#app/controllers/game_info_controller.rb 
#frozen_string_literal:false

#this controller is the outside facing router for API calls about creating and persisting game state

#redirect to game_session_controller

#create new game
    # new game requires a new game session record with player name.
    # upon creating new game session record, check if playing seeded or random GameLevel
    #  if seeded : associate an existing level record
    #  if not seeded : generate a new level record and associate with the player
#read all saved games
    # load games returns all player sessions that the requester has read access to
    # return all associated level and entity data
#read a saved game
    # load game requires an existing game session record with player name
    # return all associated level and entity data
#update/patch a saved game
    # save game requires an existing game session record with player name
    # update all associated level and entity data to reflect frontend state
    # mark read-only upon player death
#delete a saved game
    # delete game requires an existing game session record with player name
    # move the game record and associated data to an archive table
    # once a day, trim all game records from the table that are over a certain age

#redirect to entity controller
    #create new entity
        #the frontend may need to request a new entity to populate the dungeon independently of the game session creation process
    #load existing entity
        #used for conditionally loading enemies (trim spiders for phobic players, turn off OP bones files)

#redirect to item controller
    #create new item
        #used to add items to loot table when a player has customized an item
    #read items
        #used to populate loot tables and entity inventories
    #update item
        #used to update a customized item when it has been changed again
    #delete item
        #used to remove items from loot table permanently

    

class GameInfoController < ApplicationController


end
