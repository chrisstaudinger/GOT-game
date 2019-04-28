module Story_methods
    def user_make_choice(option1,option2)
        puts "1. #{option1} \n2. #{option2}"
    end

    def enemey_dead_script()
        "You killed a xyz. My hero"
    end
    
    def player_dead_script()
        "You died! Noob!"
    end
    
    def player_battle_enemy(player, enemy)
    "you blah blah blah. The whitewalker has trapped you and you must kill it to escape!"
        until (enemy.health <= 0 || player.health <= 0)
            player_attack_enemy(player, enemy)
        end
        if whitewalker1.health <= 0
            enemy_dead_script() 
        else
            player_dead_script()
        end
    end
    
    def player_attack_enemy(player, enemy)
    "Which attack are you going to do? \n 1. melee attack"
        if (gets() == 1.to_s)
            player.player_base_attack(player, enemy)
            enemy.game_actor_base_attack(enemy, player)
        end
    end

end