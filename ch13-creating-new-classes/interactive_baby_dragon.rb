class Dragon
  def initialize name
    @name = name
    @asleep = false
    @stuff_in_belly = 10
    @stuff_in_intestine = 0
    puts "#{@name} is born!"
  end

  def feed
	  puts "You feed #{@name}"
	  @stuff_in_belly = 10
	  passage_of_time
  end

  def walk
	  puts "You walk #{@name}"
	  @stuff_in_intestine = 0
	  passage_of_time
  end

  def put_to_bed
	  puts "You put #{@name} to bed"
	  @asleep = true
	  3.times do
		  if @asleep
			  passage_of_time
		  end
		  if @asleep
			  puts "#{@name} snores, filling the room with smoke"
		  end
	  end
	  if @asleep
	    @asleep = false
	    puts "#{@name} wakes up slowly"
	  end
  end

  def toss
	  puts "You toss #{@name} up into the air.."
	  puts "He giggles, which singes your eyebrows!"
	  passage_of_time
  end

  def rock
  	puts "You rock #{@name} gently"
  	@asleep = true
  	puts "He briefly dozes off..."
  	passage_of_time
  	if @asleep
  		@asleep = false
  		puts "...but wakes up when you stop"
  	end
  end

  private

  def hungry?
  	@stuff_in_belly <=2
  end

  def poopy?
  	@stuff_in_intestine >=8
  end

  def passage_of_time
  	if @stuff_in_belly > 0
  		@stuff_in_belly -= 1
  		@stuff_in_intestine += 1
  	else
  		if @asleep
  			@asleep = false
  			puts "He wakes up suddenly!"
  		end
  	puts "#{@name} is starving! In desperation, he ate YOU!"
  	exit
  	end
    if @stuff_in_intestine >= 10
      @stuff_in_intestine = 0
      puts "Whoops! #{@name} had an accident..."
    end
  	if hungry?
  		if @asleep
  			@asleep = false
  			puts "He wakes up suddenly!"
  		end
  		puts "#{@name}'s stomach grumbles..."
  	end
  	if poopy?
  		if @asleep
  			@asleep = false
  			puts "He wakes up suddenly!"
  		end
  		puts "#{@name} does the potty dance..."
  	end
  end
end

def choose(pet, action)
	if action == "feed"
		pet.feed
	elsif action == "toss"
		pet.toss
	elsif action == "walk"
		pet.walk
	elsif action == "put_to_bed"
		pet.put_to_bed
	elsif action == "rock"
		pet.rock
  elsif action == "exit"
    "OK, bye bye!"
    exit
	else
		puts "command not valid"
	end
end


puts "What would you like to call your new pet dragon?"
print ">>"
name = gets.chomp
pet = Dragon.new name
while true
  puts "What would you like to do next? Choose feed, toss, walk, put_to_bed or rock (or exit)"
  print ">>"
  action = gets.chomp
  choose(pet, action)
end
