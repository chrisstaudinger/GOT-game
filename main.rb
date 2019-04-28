require "TTY-prompt"
require_relative './characters/characters.rb'
# require_relative './behaviours/behaviours.rb'
# require_relative './items/healingItems.rb'
# require_relative './items/dmgItems.rb'
# require_relative './characters/enemies.rb'
require_relative './storylines/daenerysTStoryline.rb'
require_relative './storylines/jonSStoryline.rb'
require_relative './storylines/aryaSStoryline.rb'
# include Player_objects
include JonSStoryline
include AryaSStoryline
include DaenerysTStoryline

players = [
    {
        name: "Jon Snow",
        module: JonSStoryline,
    },
    {
        name: "Daenerys Targaryen",
        module: DaenerysTStoryline
    },
    {
        name: "Arya Stark",
        module: AryaSStoryline
    }
]
player_options = []
players.each do |player|
    player_options << player[:name]
end


prompt = TTY::Prompt.new
users_character = prompt.select("Choose your destiny?".upcase(), player_options)
player1 = nil
if (users_character == players[0][:name])
    puts "You have selected #{players[0][:name]}"
    player1 = Player.new(players[0][:name])
    players[0][:module]::run_jon_storyline()
elsif
    (users_character == players[1][:name])
    puts "You have selected #{players[1][:name]}"
    player1 = Player.new(players[1][:name])
    players[1][:module]::run_daenerys_storyline()
else
    puts "You have selected #{players[2][:name]}"
    player1 = Player.new(players[2][:name])
    players[1][:module]::run_arya_storyline()
end