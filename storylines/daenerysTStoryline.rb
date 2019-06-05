require_relative './story-methods/story-methods.rb'
require_relative './../characters/characters.rb'
require 'pry'

include Story_methods
include Players



module DaenerysTStoryline    
    def run_daenerys_storyline()
        daenerys_targaryen = Players::Player.new("Daenerys Targaryen")
        whitewalker1 = Game_actors::Low_level_game_actor.new("White Walker")
        sleep(3)
        puts "..."
        sleep(1.25)
        puts "I'm going to die if I don't get out of here."
        sleep(1.25)
        puts "I need Drogon or Rhaegal!"
        sleep(1.25)
        puts "What is this place??" 
        sleep(1.25)
        puts "This rotting smell is making me sick." 
        sleep(1.25)
        puts "And why is it so cold in here!!"
        sleep(1.25)
        puts "..."
        sleep(1.25)
        puts "Thunk thunk.. Thunk thunk"
        sleep(3)
        puts "You've encountered a #{whitewalker1.name}! What are you going to do?" 
        sleep(1.25)
        user_make_choice("Turn left", "Turn right")
        if (gets().chomp == 1.to_s)
            player_battle_enemy(daenerys_targaryen, whitewalker1)
        elsif (gets().chomp() == 2.to_s)
            player_battle_enemy(daenerys_targaryen, whitewalker1)
            # binding.pry
        else
            user_make_choice("Turn left", "Turn right")
            gets().chomp()
        end
    end
end


