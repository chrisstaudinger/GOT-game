class Game_actor
    attr_accessor(:dmg)
    def initialize()
        @dmg = 100
    end
end

class Boss < Game_actor
    attr_accessor(:special_dmg)
    def initialize()
    super
    @special_dmg = dmg * 7
    end
end

night_king = Boss.new()
cersei = Game_actor.new()

testing_arr = ["dog", "cat", "fish"]
test_var = ""
testing_arr.each do |val|
    test_var += val + " & "
end
print  test_var
puts

# print night_king.special_dmg