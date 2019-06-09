require_relative './story-methods/story-methods.rb'
require_relative './../characters/characters.rb'
require 'pry'

include Story_methods
include Players


module DaenerysTStoryline    
    def storyprint()       
        story = """
        I'm going to die if I don't get out of here.
        I need Drogon or Rhaegal!
        What is this place??
        This rotting smell is making me sick.
        And why is it so cold in here!!
        Thunk thunk.. Thunk thunk
        """
        story.each_char do |c|
            print c
            sleep(0.03)
        end
    end

    def enemy_encounter_statement(enemy)
        statement = "You've encountered a #{enemy.name}! What are you going to do?"
        statement.each_char do |c|
            print c
            sleep(0.03)
        end
    end

    def run_daenerys_storyline()
        daenerys_targaryen = Players::Player.new("Daenerys Targaryen")
        whitewalker1 = Game_actors::Low_level_game_actor.new("White Walker")

        storyprint()
        enemy_encounter_statement(whitewalker1)
        
        user_choice = user_make_choice("Turn Left", "Turn Right")
        if (user_choice == "Turn Left".strip)
            player_battle_enemy(daenerys_targaryen, whitewalker1)
        elsif (user_choice == "Turn Right".strip)
            player_battle_enemy(daenerys_targaryen, whitewalker1)
        else
            user_make_choice("Turn Left", "Turn Right")
        end
    end
end


