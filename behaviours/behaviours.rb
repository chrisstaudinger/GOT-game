module Behaviours
    def player_base_attack(game_actor)
        game_actor.health -= self.dmg
        script = "\n#{self.name} melee attacked #{game_actor.name}, dealing #{self.dmg} damage!\n#{game_actor.name}'s health dropped to #{game_actor.health}."
        char_printer(script)
    end

    def player_special_attack(game_actor)
        game_actor.health -= self.inventory[0].dmg
        script = "\n#{self.name} used #{self.inventory[0].name} to #{self.inventory[0].attack_name} #{game_actor.name}, dealing #{self.inventory[0].dmg} damage!\n#{game_actor.name}'s health dropped to #{game_actor.health}."
        char_printer(script)
    end

    def player_special_attack2(game_actor)
        game_actor.health -= self.inventory[1].dmg
        script = "\n#{self.name} used #{self.inventory[1].name} to #{self.inventory[1].attack_name} #{game_actor.name}, dealing #{self.inventory[0].dmg} damage!\n#{game_actor.name}'s health dropped to #{game_actor.health}."
        char_printer(script)
    end

    def player_ultimate_attack(game_actor)
        damage = self.inventory[0].dmg + self.inventory[1].dmg
        game_actor.health -= damage
        script = "\n#{self.name} used #{self.inventory[0].name} & #{self.inventory[1].name} to #{self.inventory[0].attack_name} #{game_actor.name}, dealing #{damage} damage!\n#{game_actor.name}'s health dropped to #{game_actor.health}."
        char_printer(script)
    end

    def game_actor_base_attack(player)
        player.health -= self.dmg
        script = "\n\n#{self.name} attacked #{player.name}, dealing #{self.dmg} damage!\n#{player.name}'s health dropped to #{player.health}."
        char_printer(script)
    end

    def game_actor_special_attack(player)
        player.health -= self.special_dmg
        script = "\n\n#{self.name} special attacked #{player.name}, dealing #{self.dmg} damage!\n#{player.name}'s health dropped to #{player.health}."
        char_printer(script)
    end

    def char_printer(str)
        str.each_char do |c|
            print c
            sleep(0.03)
        end
    end
end
