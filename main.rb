require 'TTY-prompt'
require 'colorize'
require 'artii'
require 'tty-font'
require 'paint'
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


def welcome_window()
    font = TTY::Font.new(:doom)
    welcome_message1 = font.write("Welcome  To", letter_spacing: 3)
    welcome_message2 = font.write("Game of Thrones", letter_spacing: 3)
    puts Paint[welcome_message1, :red, :bright]
    puts Paint[welcome_message2, :red, :bright]
end
welcome_window()


def load_game()     #load game display
    print "\nGame Loading".colorize(:green)
    i = 0
    until i >= 4 do
        sleep 1 
        print ".".colorize(:green)
        i += 1
    end
end
puts load_game()

def print_ascii_art(file, color)
    File.open(file, "r+") do |f|
        f.each_char do |c|
            print Paint[c, color.to_sym, :bright]
            sleep(0.008)
        end
    end
end

print_ascii_art("./ascii-art/dragon1.txt", "red")

choose_player_prompt = TTY::Prompt.new
users_character = choose_player_prompt.select("Choose your destiny?".upcase(), player_options)
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