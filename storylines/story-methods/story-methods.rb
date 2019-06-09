module Story_methods

    def char_printer(str)
        str.each_char do |c|
            print c
            sleep(0.03)
        end
    end

    def print_story(story_string)       
        char_printer(story_string)
    end

    def enemy_encounter_statement(enemy)
        statement = "You've encountered a #{enemy.name}! What are you going to do?"
        char_printer(statement)
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
            enemy_dead_script(enemy) 
        else
            player_dead_script(player)
        end
    end
    
    def player_attack_enemy(player, enemy)
        puts "\nWhich attack are you going to do?"
            user_make_choice_prompt = TTY::Prompt.new()
            users_options = ["Melee Attack"]
            users_choice = user_make_choice_prompt.select("", users_options)
        if (users_choice == "Melee Attack".strip())
            player.player_base_attack(enemy) 
            enemy.game_actor_base_attack(player)
        else
            puts "You have not inputted an appropriate action\nSelect an attack from your Attack options"
            gets().chomp()
        end
    end

    def enemy_dead_script(enemy)
        script = "\n\nYou killed #{enemy.name}. My hero"
        char_printer(script)
    end
    
    def player_dead_script(player)
        script = "\n\nYou died! Noob!"
        char_printer(script)
    end

    def print_ascii_art(file, color)
        File.open(file, "r+") do |f|
            f.each_char do |c|
                print Paint[c, color.to_sym, :bright]
                sleep(0.008)
            end 
        end
    end

end