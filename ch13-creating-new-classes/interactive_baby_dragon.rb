class Dragon

    def initialize name
        @name = name
        @asleep = false
        @stuffInBelly     = 10  # He's full.
        @stuffInIntestine =  0  # He doesn't need to go.

        @methodsHash  = {}
        @methodStringsArray = Dragon.instance_methods false
        @methodStringsArray.each do |m|
            @methodsHash[m.to_s] = method(m)
        end

        puts @name + ' is born.'

    end



    def userInput input
        @methodsHash[input.downcase].call
#        checker = 0
#        @inputArray = Dragon.instance_methods false
#        puts @inputArray
#        @methodArray = []
#
#        @inputArray.each do |m|
#            @methodArray[checker] = method(m)
#            checker += 1
#        end
#        puts @methodArray.to_s
#
#
#        checker = 0
#        while input != @inputArray[checker].to_s
#                checker = checker + 1
#        end
#        @methodArray[checker].call

    end




    def feed
        puts 'You feed ' + @name + '.'
        @stuffInBelly = 10
        passageOfTime
    end

    def walk
        puts 'You walk ' + @name + '.'
        @stuffInIntestine = 0
        passageOfTime
    end

    def putToBed
        puts 'You put ' + @name + ' to bed.'
        @asleep = true
        3.times do
            if @asleep
                passageOfTime
            end
            if @asleep
                puts @name + ' snores, filling the room with smoke.'
            end
        end
        if @asleep
            @asleep = false
            puts @name + ' wakes up slowly.'
        end
    end

    def toss
        puts 'You toss ' + @name + ' up into the air.'
        puts 'He giggles, which singes your eyebrows.'
        passageOfTime
    end

    def rock
        puts 'You rock ' + @name + ' gently.'
        @asleep = true
        puts 'He briefly dozes off...'
        passageOfTime
        if @asleep
            @asleep = false
            puts '...but wakes when you stop.'
        end
    end

    private

    # "private" means that the methods defined here are
    # methods internal to the object.  (You can feed
    # your dragon, but you can't ask him if he's hungry.)

    def hungry?
        # Method names can end with "?".
        # Usually, we only do this if the method
        # returns true or false, like this:
        @stuffInBelly <= 2
    end

    def poopy?
        @stuffInIntestine >= 8
    end

    def passageOfTime
        if @stuffInBelly > 0
            # Move food from belly to intestine.
            @stuffInBelly     = @stuffInBelly     - 1
            @stuffInIntestine = @stuffInIntestine + 1
            else  # Our dragon is starving!
            if @asleep
                @asleep = false
                puts 'He wakes up suddenly!'
            end
            puts @name + ' is starving!  In desperation, he ate YOU!'
            exit  # This quits the program.
        end

        if @stuffInIntestine >= 10
            @stuffInIntestine = 0
            puts 'Whoops!  ' + @name + ' had an accident...'
        end

        if hungry?
            if @asleep
                @asleep = false
                puts 'He wakes up suddenly!'
            end
            puts @name + '\'s stomach grumbles...'
        end

        if poopy?
            if @asleep
                @asleep = false
                puts 'He wakes up suddenly!'
            end
            puts @name + ' does the potty dance...'
        end
    end
end


#puts Dragon.instance_methods false

pet = Dragon.new 'Norbert'

pet.userInput gets.chomp

# while gets.chomp != "exit"
# pet.userInput gets.chomp
# end


# pet.feed
# pet.toss
# pet.walk
# pet.putToBed
# pet.rock
# pet.putToBed
# pet.putToBed
# pet.putToBed
# pet.putToBed
# #
