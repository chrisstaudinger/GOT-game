module Healing_items
    class Healing_item
        attr_accessor(:restore_health)
        def initialize()
            @restore_health = 300
            @name = "Potion"
        end

        def heal(player)
            sleep(1)
            script1 = "#{player.name}'s health was #{player.health}.\n"
            char_printer(script1)
            player.health += @restore_health
            script2 = "Gulp Gulp\n#{player.name} used the #{@name}.\n#{player.name}'s health is now #{player.health}"
            char_printer(script2)
            sleep(1)
        end

        def find_healing_item(player)
            sleep(1.5)
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

    class Superior_healing_item < Healing_item
        def initialize()
            super
            @restore_health *= 5
            @name = "Elixir"
        end
    end

end