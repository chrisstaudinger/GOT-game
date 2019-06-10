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

    viserion = Game_actor.new("Viserion")
    cersei = Game_actor.new("Cersei Lannister")
    hound = Game_actor.new("Sandor Clegane")

    class Boss < Game_actor
        attr_accessor(:special_dmg)
        def initialize(name)
        super(name)
        @health *= 3
        @special_dmg = dmg * 7
        end
        def to_s
            super + ", special damage is #{@special_dmg}"
        end
    end
    # puts night_king = Boss.new("Night King")

    class Low_level_game_actor < Game_actor
        def initialize(name)
            super(name)
            @health /= 2
            @dmg /= 2
        end
    end
    whitewalker1 = Low_level_game_actor.new("White Walker")
    whitewalker2 = Low_level_game_actor.new("White Walker")
    night_king = Boss.new("Night King")
end




