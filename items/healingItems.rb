class Healing_item
    attr_accessor(:restore_health)
    def initialize()
        @restore_health = 300
    end
    def heal(player)
        player.health += @restore_health
    end
    def to_s
        "Healing item object heals #{@restore_health} health"
    end
end

potion = Healing_item.new()
# puts "string sting"
# puts potion

class Superior_healing_item < Healing_item
    def initialize()
        super
        @restore_health *= 5
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