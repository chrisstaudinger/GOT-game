require_relative './story-methods/story-methods.rb'
require_relative './story-methods/story-variables.rb'
require_relative './../characters/characters.rb'
require_relative './../items/healingItems.rb'
require_relative './../items/dmgItems.rb'
require 'pry'

include Story_methods
include Players
include Healing_items
include Dmg_items
include Story_variables


module DaenerysTStoryline    

    def run_daenerys_storyline()
        daenerys_targaryen = Players::Player.new("Daenerys Targaryen")
        whitewalker1 = Game_actors::Low_level_game_actor.new("White Walker")
        whitewalker2 = Game_actors::Low_level_game_actor.new("White Walker")
        potion1 = Healing_item.new()
        drogon = Dmg_item.new("Drogon", 150)

        print_story(D_t_storyline_intro)

        enemy_encounter_statement(whitewalker1)
        
        user_choice = user_make_choice("Turn Left", "Turn Right")
        if (user_choice == "Turn Left".strip)
            battle_1_user_choice = "option 1"
            print_story(Corridor_batlle_enemy_script)
            player_battle_enemy_intro(whitewalker1)
            print_ascii_art("./ascii-art/skeleton1.txt", "white")
            player_battle_enemy(daenerys_targaryen, whitewalker1)
            if (whitewalker1.health <= 0) 
                print_ascii_art("./ascii-art/skeleton_dead1.txt", "white")
            end
        elsif (user_choice == "Turn Right".strip)
            battle_1_user_choice = "option 2"
            print_ascii_art("./ascii-art/skeleton1.txt", "white")
            player_escape_statement(Corridor_escape_enemy_script)
        else
            user_make_choice("Turn Left", "Turn Right")
        end

            print_story(D_t_whitewalker2_encounter_script)
            player_battle_enemy_intro(whitewalker2)
            print_ascii_art("./ascii-art/skeleton1.txt", "white")
            player_battle_enemy(daenerys_targaryen, whitewalker2)
            if (whitewalker2.health <= 0) 
                print_ascii_art("./ascii-art/skeleton_dead1.txt", "white")
                potion1.find_healing_item(daenerys_targaryen)
                potion1.heal(daenerys_targaryen)
                print_story(D_t_storyline_found_drogon)
                daenerys_targaryen.inventory << drogon
                print_ascii_art("./ascii-art/dragon2.txt", "red")
                print daenerys_targaryen.to_s #Checking if Drogon dmg_item is was assigned to character
            end

        print_story(Post_whitewalker2_script1)
        print_story(D_t_storyline_post_whitewalker2_script1)
    end
end




