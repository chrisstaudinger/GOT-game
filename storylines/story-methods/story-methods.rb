module Story_methods
    def user_make_choice(option1,option2)
        puts "1. #{option1} 2. #{option2}"
    end

    def enemy_dead_script()
        puts "You killed a xyz. My hero"
    end
    
    def player_dead_script()
        puts "You died! Noob!"
    end
    
    def player_battle_enemy(player, enemy)
    puts "You run down the dimly lit corridor.."
    sleep(2)
    puts"Bang!!\nYou've ran straight into a wall"
    sleep(2)
    puts "The #{enemy.name} has you trapped!\nIn order to survive you must kill it."
    puts "Press 1. To melee attack"
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
    "Which attack are you going to do? \n 1. melee attack"
        if (gets().chomp() == 1.to_s)
            player.player_base_attack(enemy) 
            sleep(3)
            enemy.game_actor_base_attack(player)
        else
            puts "You have not inputted an appropriate action\nPress '1' to melee attack"
            gets().chomp()
        end
    end

end