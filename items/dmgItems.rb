module Dmg_items
    class Dmg_item
        attr_accessor(:name, :dmg, :attack_name)
        def initialize(name,dmg,attack_name)
            @name = name
            @attack_name = attack_name
            @dmg = dmg
        end
        
        def to_s
            "Dmg_item object's name is #{@name}, damage is #{@dmg}"
        end
    end
end

