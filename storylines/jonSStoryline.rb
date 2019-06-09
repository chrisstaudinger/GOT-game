module JonSStoryline
    def storyprint()    #display the games background story        
        story = """
        you are the last heir of the Coder Academy Kingdom. Four months ago an ancient Dragon awoke from its 
        """
        story.each_char do |c|
            print c
            sleep(0.03)
        end
    end
    
    def run_jon_storyline()
        puts "running Jon Storyline"
        storyprint()
    end
end