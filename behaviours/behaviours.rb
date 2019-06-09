module Behaviours
    def player_base_attack(game_actor)
        game_actor.health -= self.dmg
        script = "\n#{self.name} melee attacked #{game_actor.name} dealing #{self.dmg} damage!\n#{game_actor.name}'s health dropped to #{game_actor.health}."
        script.each_char do |c|
            print c
            sleep(0.03)
        end
    end
    def player_special_attack(game_actor)
        game_actor.health -= self.inventory[0].dmg
    end
    def game_actor_base_attack(player)
        player.health -= self.dmg
        script = "\n\n#{self.name} melee attacked #{player.name} dealing #{self.dmg} damage!\n#{player.name}'s health dropped to #{player.health}."
        script.each_char do |c|
            print c
            sleep(0.03)
        end
    end
    def game_actor_special_attack(player)
        player.health -= self.special_dmg
    end
end

# class Player
#     @@count = 0
#     attr_accessor(:name, :health, :dmg)
#     def initialize(name)
#         @name = name
#         @health = 1000
#         @dmg = 100
#         @@count += 1
#     end

#     include Behaviours    

#     def self.count_player()
#         @@count
#     end

#     def to_s
#         "Player's name is #{@name}, health is #{@health}, damage is #{@dmg}"
#     end
# end

# puts jon_snow = Player.new("John Snow")
# puts daenerys_targaryen = Player.new("Daenerys Targaryen")
# jon_snow.base_attack(jon_snow, daenerys_targaryen)
# puts daenerys_targaryen
# jon_snow.base_attack(jon_snow, daenerys_targaryen)
# puts daenerys_targaryen
