require_relative './story-methods/story-methods.rb'
include Story_methods
require_relative './story-methods/story-variables.rb'
include Story_variables
require_relative './../characters/characters.rb'
include Players
require_relative './../items/healingItems.rb'
include Healing_items
require_relative './../items/dmgItems.rb'
include Dmg_items

module DaenerysTStoryline    

    def run_daenerys_storyline()
        daenerys_targaryen = Players::Player.new("Daenerys Targaryen")
        whitewalker1 = Game_actors::Low_level_game_actor.new("White Walker")
        whitewalker2 = Game_actors::Low_level_game_actor.new("White Walker")
        cersei = Game_actors::Game_actor.new("Cersei Lannister")
        night_king = Game_actors::Boss.new("Night King")
        potion1 = Healing_item.new()
        elixir = Superior_healing_item.new()
        drogon = Dmg_item.new("Drogon", 150, "Dracarys")
        rhaegal = Dmg_item.new("Rhaegal", 150, "Dracarys")

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
            end

        print_story(Post_whitewalker2_script1)
        print_story(D_t_storyline_post_whitewalker2_script1)
        print_ascii_art("./ascii-art/cersei1.txt", "red")
        player_battle_enemy(daenerys_targaryen, cersei)
        if (cersei.health <= 0) 
            print_ascii_art("./ascii-art/cersei_dead1.txt", "red")
            elixir.find_healing_item(daenerys_targaryen)
            elixir.heal(daenerys_targaryen)
            print_story(Post_game_actor1_script1)
            print_story(Post_game_actor1_script2)
            print_story(D_t_storyline_found_rhaegal)
            daenerys_targaryen.inventory << rhaegal
            print_ascii_art("./ascii-art/dragon3.txt", "red")
            print_story(D_t_storyline_post_game_actor1_script)
            print_ascii_art("./ascii-art/night_king1.txt", "blue")
            print_story(Night_king_script1)
        end

        user_choice = user_make_choice("Join The Night King & Lead His Army", "Refuse Offer & Kill The Night King")
        if (user_choice == "Join The Night King & Lead His Army".strip)
            print_story(Accept_night_king_offer_script)
            print_story(Night_king_script2)
            print_story(Player_deceive_night_king_script)
            print_story(Night_king_script3)
        elsif (user_choice == "Refuse Offer & Kill The Night King".strip)
            print_story(Refuse_night_king_offer_script)
            print_story(Night_king_script3)
        else
            user_make_choice("Join The Night King & Lead His Army", "Refuse Offer & Kill The Night King")
        end

        player_battle_enemy(daenerys_targaryen, night_king)
        if (night_king.health <= 0) 
            print_ascii_art("./ascii-art/night_king_dead1.txt", "red")
        end



    end
end




