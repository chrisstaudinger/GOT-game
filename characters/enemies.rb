require_relative './../behaviours/behaviours.rb'

module Game_actors
    class Game_actor
        @@count = 0
        attr_accessor(:name, :health, :dmg)
        def initialize(name)
            @name = name
            @health = 1000
            @dmg = 100
            @@count += 1
        end

        include Behaviours
        def self.count_game_actors()
            @@count
        end

        def to_s
            "Game_actor's name is #{@name}, health is #{@health}, damage is #{@dmg}"
        end
    end

    class Boss < Game_actor
        def initialize(name)
        super(name)
        @health *= 3
        @dmg *= 7
        end

        def to_s
            super + ", special damage is #{@special_dmg}"
        end
    end

    class Low_level_game_actor < Game_actor
        def initialize(name)
            super(name)
            @health /= 2
            @dmg /= 2
        end
    end
end




