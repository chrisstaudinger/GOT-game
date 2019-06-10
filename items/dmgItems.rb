module Dmg_items
    class Dmg_item
        attr_accessor(:name, :dmg)
        def initialize(name,dmg)
            @name = name
            @dmg = dmg
        end
        def to_s
            "Dmg_item object's name is #{@name}, damage is #{@dmg}"
        end
    end
end

