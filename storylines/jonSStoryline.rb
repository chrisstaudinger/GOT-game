module JonSStoryline
    def storyprint()    #display the games background story        
        story = """
        you are the last heir of the Coder Academy Kingdom. Four months ago an ancient Dragon awoke from its 
        slumber, and returned to where it once roamed. Finding man made structures where he used to lie, the beast became enraged 
        and called forth an army of the undead using his ancient knowledge, wreaking havoc upon the land. This very land was the 
        land of your ancestors - the kingdom of Coder Academy. The enemy wishes to turn your kingdom to rubble, but you have 
        decided to fight, for the people that survived and for your honor.
        """
        story.each_char do |c|
            print c
            sleep(0.03)
        end
        # print "\n"
        # sleep(4)
    end
    
    def run_jon_storyline()
        puts "running Jon Storyline"
        storyprint()
    end
end