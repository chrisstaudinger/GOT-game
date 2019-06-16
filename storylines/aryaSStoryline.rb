require_relative './story-methods/story-methods.rb'
include Story_methods
require_relative './story-methods/story-variables.rb'
include Story_variables
require_relative './../characters/characters.rb'
include Players
require_relative './../items/healingItems.rb'
include Healing_items
require_relative './../items/dmgItems.rb'
include Dmg_items

module AryaSStoryline
    def run_arya_storyline()
        print_story("\nThis storyline is coming soon\n")
    end
end