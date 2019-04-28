require_relative './story-methods/story-methods.rb'

module DaenerysTStoryline
    include Story_methods
    def run_daenerys_storyline()
        puts "You've encountered a whitewalker! What are you going to do?" 
        user_make_choice("Turn left", "Turn right")
        if (gets().chomp == 1.to_s)
            player_battle_enemy()
        elsif (gets().chomp() == 2.to_s)
            player_battle_enemy()
        else
            user_make_choice("Turn left", "Turn right")
        end
    end
end


