class Dragon
  
  def initialize name
  	@name = name
  	@asleep = false
  	@stuffInBelly = 10 # He's full.
  	@stuffInIntestine = 0 # He doesn't need to go.

  	puts @name + " is born."
  end

  def feed
  	puts "You feed " + @name + "."
  	@stuffInBelly = 10
  	passageOfTime
  end

  def walk
  	puts "You walk " + @name + "."
  	@stuffInIntestine = 0
  	passageOfTime
  end

  def putToBed
  	puts "You put " + @name + " to bed."
  	@asleep = true
  	3.times do
  	  if @asleep
  	  	passageOfTime
  	  end
  	  if @asleep
  	  	puts @name + " snores, filling the room with smoke."
  	  end
  	end
  	if @asleep
  	  @asleep = false
  	  puts @name + " wakes up slowly."
  	end
  end

  def toss
  	puts "You toss " + @name + " up into the air."
  	puts "He giggles, which singes your eyebrows."
  	passageOfTime
  end

  def rock
	puts "You rock " + @name + " gently."
	@asleep = true
	puts "He briefly dozes off..."
	passageOfTime
	if @asleep
	  @asleep = false
	  puts "...but wakes when you stop."
	end  	
  end

  private
  # "private" means that the methods defined here are
  # methods internal to the object. (You can feed
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
  	  @stuffInBelly = @stuffInBelly - 1
  	  @stuffInIntestine = @stuffInIntestine + 1
  	else # Our dragon is starving!
  	  if @asleep
  	    @asleep = false
  	    puts "He wakes up suddenly!"
  	  end
  	  puts @name + " is starving! In desperation, he ate YOU!"
  	  exit # This quits the program.
  	end

  	if @stuffInIntestine >= 10
  	  @stuffInIntestine = 0
  	  puts "Whoops! " + @name + " had an accident..."
  	end

  	if hungry?
  	  if @asleep
  	    @asleep = false
  	    puts "He wakes up suddenly!"
  	  end
  	  puts @name + "'s stomach grumbles..."
  	end

  	if poopy?
  	  if @asleep
  	    @asleep = false
  	    puts "He wakes up suddenly!"
  	  end
  	  puts @name + " does the potty dance..."
  	end
  end

end

puts "What would you like to name your new pet dragon?"
dragon_name = gets.chomp
pet = Dragon.new dragon_name

puts "What would you like to do with " + dragon_name + "?"
puts "Type 'feed' if you would like to feed your dragon."
puts "Type 'walk' if you would like to walk your dragon."
puts "Type 'bed' if you would like to put your dragon to bed."
puts "Type 'toss' if you would like to play with your dragon."
puts "Type 'rock' if you would like to rock your dragon in your arms."
activity = gets.chomp

while activity != "exit"
  puts "Anything else you would like to do?"
  activity = gets.chomp

if activity == "feed"
  pet.feed
elsif activity == "walk"
   pet.walk
elsif activity == "bed"
   pet.putToBed
elsif activity == "toss"
   pet.toss
elsif activity == "rock"
   pet.rock
elsif activity == "exit"
   puts "Your looks at you with big eyes and wonders why you're leaving him."
else
    puts "Your dragon is staring at you intently, waiting for you to do something."
end

end