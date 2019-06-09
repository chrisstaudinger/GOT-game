require_relative './story-methods/story-methods.rb'
require_relative './../characters/characters.rb'
require 'pry'

include Story_methods
include Players


module DaenerysTStoryline    

    def run_daenerys_storyline()
        daenerys_targaryen = Players::Player.new("Daenerys Targaryen")
        whitewalker1 = Game_actors::Low_level_game_actor.new("White Walker")

        print_story(
            """
            I'm going to die if I don't get out of here.
            I need Drogon or Rhaegal!
            What is this place??
            This rotting smell is making me sick.
            And why is it so cold in here!!
            Thunk thunk.. Thunk thunk
            """
        )

        enemy_encounter_statement(whitewalker1)
        
        user_choice = user_make_choice("Turn Left", "Turn Right")
        if (user_choice == "Turn Left".strip)
            print_story(
                """
                You run down the dimly lit corridor...
                Bang!!
                You've ran straight into a wall
                """
            )
            player_battle_enemy_intro(whitewalker1)
            print_ascii_art("./ascii-art/skeleton1.txt", "white")
            player_battle_enemy(daenerys_targaryen, whitewalker1)
        elsif (user_choice == "Turn Right".strip)
            print_ascii_art("./ascii-art/skeleton1.txt", "white")
            player_escape_statement(
                """
                You run down the dimly lit corridor...
                The chilling footsteps have turned into a stampede following you...
                Where is left to run?
                The shrieking sounds grow louder...
                ...
                Over there!!
                You race towards the giant closing doors...
                Boom! You scrape through as the doors slam behind you...
                """
            )
            # player_battle_enemy(daenerys_targaryen, whitewalker1)
        else
            user_make_choice("Turn Left", "Turn Right")
        end

        print_story(
            """\n
            That was scary!!
            Too close for comfort...
            Where am I now anyway??\n
            """
        )
        print_story(
            """\n
            'You are in my castle...''
            \"Mother of Dragons...\"
            'Though I don't like unwanted guest in my castle. You can think of it as your TOMB...'\n
            """
        )
        print_story(
            """
            'CERSEI!'
            'I should have known you were behind all this.'
            'That putrid smell earlier gave you away'
            'Enough of the chit chat...'
            'It's time for you to meet your Queen!'
            """
        )
    end
end




