module Story_methods

    def print_story(story_string)       
        story = story_string
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
    
    def user_make_choice(option1,option2)
        user_make_choice_prompt = TTY::Prompt.new()
        users_options = []
        users_options << option1
        users_options << option2
        users_choice = user_make_choice_prompt.select("", users_options)
    end

    def player_escape_statement(statement)
        statement.each_char do |c|
            print c
            sleep(0.03)
        end
    end

    def player_battle_enemy_intro(enemy)
        statement = """
                The #{enemy.name} has you trapped!
                In order to survive you must kill it.
                """
        statement.each_char do |c|
            print c
            sleep(0.03)
        end
    end
    
    def player_battle_enemy(player, enemy)
        until (enemy.health <= 0 || player.health <= 0)
            player_attack_enemy(player, enemy)
        end
        if enemy.health <= 0
            enemy_dead_script() 
        else
            player_dead_script()
        end
    end
    
    def player_attack_enemy(player, enemy)
        puts "Which attack are you going to do? \n1. melee attack"
        if (gets().chomp() == 1.to_s)
            player.player_base_attack(enemy) 
            sleep(3)
            enemy.game_actor_base_attack(player)
        else
            puts "You have not inputted an appropriate action\nPress '1' to melee attack"
            gets().chomp()
        end
    end

    def enemy_dead_script()
        puts "You killed a xyz. My hero"
    end
    
    def player_dead_script()
        puts "You died! Noob!"
    end

end