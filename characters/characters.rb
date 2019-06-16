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
end