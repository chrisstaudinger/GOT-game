module Healing_items
    class Healing_item
        attr_accessor(:restore_health)
        def initialize()
            @restore_health = 300
            @name = "Potion"
        end
        def heal(player)
            script1 = "#{player.name}'s health was #{player.health}.\n"
            char_printer(script1)
            player.health += @restore_health
            script2 = "#{player.name} used the potion.\n#{player.name}'s health is now #{player.health}"
            char_printer(script2)
        end
        def find_healing_item(player)
            script = "\n...\n#{player.name} found a #{@name}!\n"
            char_printer(script)
        end
        def to_s
            "Healing item object heals #{@restore_health} health"
        end
        def char_printer(str)
            str.each_char do |c|
                print c
                sleep(0.03)
            end
        end 
    end

    potion = Healing_item.new()
    # puts "string sting"
    # puts potion

    class Superior_healing_item < Healing_item
        def initialize()
            super
            @restore_health *= 5
            @name = "Elixir"
        end
    end

    elixir = Superior_healing_item.new()

    # class Player
    #     @@count = 0
    #     attr_accessor(:name, :health, :dmg)
    #     def initialize(name)
    #         @name = name
    #         @health = 1000
    #         @dmg = 100
    #         @@count += 1
    #     end


    #     def self.count_player()
    #         @@count
    #     end

    #     def to_s
    #         "Player's name is #{@name}, health is #{@health}, damage is #{@dmg}"
    #     end
    # end

    # daenerys_targaryen = Player.new("Daenerys Targaryen")
    # puts potion.heal(daenerys_targaryen)
end