class Dragon

	attr_reader :name


  def initialize(name)
    @name = name
    @asleep = false
    @stuff_in_belly = 10 # He's full.
    @stuff_in_intestine = 0 # He doesn't need to go.
    puts "#{@name} is born."
	end

  def feed
    puts "You feed #{@name}."
    stuff_in_belly = 10
    passage_of_time
  end

  def walk
    puts "You walk #{name}."
    stuff_in_intestine = 0
    passage_of_time
  end

  def put_to_bed
    puts "You put #{name} to bed."
    asleep = true
		dragon_snores if @asleep
    wakesup_slowly if @asleep
  end

  def toss
    puts "You toss #{@name} up into the air."
    puts 'He giggles, which singes your eyebrows.'
    passage_of_time
  end

  def rock
    puts "You rock #{@name} gently."
    @asleep = true
    puts 'He briefly dozes off...'
    passage_of_time
    if @asleep
      @asleep = false
      puts '...but wakes when you stop.'
    end
	end

  private

	attr_accessor :asleep, :stuff_in_belly, :stuff_in_intestine

	def dragon_snores
		3.times do
			passage_of_time
			puts "#{@name} snores, filling the room with smoke."
		end
	end
  # "private" means that the methods defined here are
  # methods internal to the object. (You can feed your
  # dragon, but you can't ask him whether he's hungry.)
	def wakesup_suddenly
		@asleep = false
		puts 'He wakes up suddenly!'
	end

	def wakesup_slowly
		@asleep = false
		puts "#{@name} wakes up slowly."
	end

  def hungry?
    # Method names can end with "?".
    # Usually, we do this only if the method
    # returns true or false, like this:
    @stuff_in_belly <= 2
  end

  def poopy?
    @stuff_in_intestine >= 8
  end

	def belly_not_empty
		@stuff_in_belly > 0
	end

  def passage_of_time
    if belly_not_empty
      # Move food from belly to intestine.
      @stuff_in_belly -= 1
      @stuff_in_intestine += 1
    else # Our dragon is starving!
      wakesup_suddenly if @asleep
      puts "#{@name} is starving! In desperation, he ate YOU!"
      exit # This quits the program.
    end

    if @stuff_in_intestine >= 10
      @stuff_in_intestine = 0
      puts "Whoops! #{@name} had an accident..."
    end

    if hungry?
      wakesup_suddenly if @asleep
      puts "#{@name}'s stomach grumbles..."
    end

    if poopy?
      wakesup_suddenly if @asleep
      puts "#{@name} does the potty dance..."
    end
  end
end
pet = Dragon.new 'Norbert'

pet.feed
pet.toss
pet.walk
pet.put_to_bed
pet.rock
pet.put_to_bed
pet.put_to_bed
pet.put_to_bed
pet.put_to_bed

# class Dragon
#
# 	def initialize name
# 		@name = name
# 	end
#
# 	def feed
# 		puts "you have feed your #{@name}"
# 	end
#
# 	def walk
# 		puts "you have taking #{@name} for a walk"
# 	end
#
#
# 	puts "what would you like to do 'feed', 'walk' #{@name}"
#   check_reply(gets.chomp)
#
# 	private
#
# 	def check_reply answer
# 		return feed if answer == 'feed'
# 		return walk if answer =='walk'
# 		puts "please enter 'feed' or 'walk'"
# 	end
# end
#
# pet = Dragon.new "jamie"
# your code here
