require 'pry'
require_relative './../behaviours/behaviours.rb'
require_relative './../items/healingItems.rb'
require_relative './../items/dmgItems.rb'
require_relative './../characters/enemies.rb'

module Players
    class Player
        @@count = 0
        attr_accessor(:name, :health, :dmg, :inventory)
        def initialize(name)
            @@count += 1
            @name = name
            @health = 1000
            @dmg = 100
            @inventory = []
        end
        include Behaviours
        def self.count_player()
            @@count
        end
        def to_s
            "Player's name is #{@name}, health is #{@health}, damage is #{@dmg}, inventory has #{@inventory}"
        end
    end

    # daenerys_targaryen = Player.new("Daenerys Targaryen")
    jon_snow = Player.new("Jon Snow")
    arya_stark = Player.new("Arya Stark")
end

# puts potion = Healing_item.new()
# Healing_item.new()
# elixir = Superior_healing_item.new()

# jon_snow_imbued_sword = Dmg_item.new("Dragon Glass Imbued Longclaw", 500)
# JON_SNOW.inventory << jon_snow_imbued_sword 
# drogon = Dmg_item.new("Drogon", 1000)
# Daenerys_targaryen.inventory << drogon
# faceless_skill = Dmg_item.new("Metamorph", 400)
# Arya_stark.inventory << faceless_skill

# jon_snow.player_base_attack(jon_snow, daenerys_targaryen)
# puts daenerys_targaryen
# jon_snow.player_base_attack(jon_snow, daenerys_targaryen)
# puts daenerys_targaryen
# puts potion.heal(daenerys_targaryen)
# puts potion.heal(daenerys_targaryen)
# puts elixir.heal(daenerys_targaryen)
# puts """




# """
# puts jon_snow.player_special_attack(jon_snow, daenerys_targaryen)
# puts daenerys_targaryen.player_special_attack(daenerys_targaryen, jon_snow)
# puts arya_stark.player_special_attack(arya_stark, jon_snow)
# puts """




# """
# puts whitewalker1
# puts whitewalker1.game_actor_base_attack(whitewalker1, daenerys_targaryen)


# puts night_king
# puts night_king.game_actor_base_attack(daenerys_targaryen)
# puts night_king.game_actor_special_attack(daenerys_targaryen)
# puts whitewalker1.game_actor_base_attack(daenerys_targaryen)
# puts whitewalker1.game_actor_base_attack(daenerys_targaryen)
