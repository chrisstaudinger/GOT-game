require 'TTY-prompt'
require 'colorize'
require 'artii'
require 'tty-font'
require 'paint'
require_relative './characters/characters.rb'
require_relative './storylines/daenerysTStoryline.rb'
include DaenerysTStoryline
require_relative './storylines/jonSStoryline.rb'
include JonSStoryline
require_relative './storylines/aryaSStoryline.rb'
include AryaSStoryline
require_relative './storylines/story-methods/story-methods.rb'
include Story_methods

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

welcome_window()
puts load_game()

print_ascii_art("./ascii-art/dragon1.txt", "red")

choose_player_prompt = TTY::Prompt.new
users_character = choose_player_prompt.select("\nChoose your character?".upcase(), player_options)
player1 = nil
if (users_character == players[0][:name])
    puts "You have selected #{players[0][:name]}"
    puts "Good Luck ..."
    sleep(2)
    player1 = Players::Player.new(players[0][:name])
    players[0][:module]::run_jon_storyline()
elsif
    (users_character == players[1][:name])
    puts "You have selected #{players[1][:name]}"
    puts "Good Luck ..."
    sleep(2)
    player1 = Players::Player.new(players[1][:name])
    players[1][:module]::run_daenerys_storyline()
else
    puts "You have selected #{players[2][:name]}"
    puts "Good Luck ..."
    sleep(2)
    player1 = Players::Player.new(players[2][:name])
    players[1][:module]::run_arya_storyline()
end