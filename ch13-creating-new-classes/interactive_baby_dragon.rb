class Dragon

	def initialize(name)
		@name = name
		@asleep = false
		@full_belly = 10
		@ready_to_poop = 0

		puts "#{@name} is born!"

	end

	def feed
		puts "You feed #{@name}."
		@full_belly = 10  
		passage_of_time  #return passage of time
	end

	def walk
		puts "You walk #{@name}."
		@ready_to_poop = 0
		passage_of_time #return passage of time
	end

	def put_to_bed
		puts "You put #{@name} to bed."
		@asleep = true
		3.times do # why 3 times... ok get it, once run, just a nice added extra!
			if @asleep
			passage_of_time
			end
			if @asleep
			puts "#{@name} snores!"
			end
		end
			if @asleep
			@asleep = false
			puts "#{@name} wakes up slowly."
		end
	end

	def toss
		puts "You toss #{@name} up into the air."
		puts "He giggles."
		passage_of_time
	end

	def rock
		puts "You rock #{@name} gently."
		@asleep = true
		puts "He briefly doses off..."
		passage_of_time
		if @asleep
			@asleep = false 
			puts "... but wakes up when you stop rocking him."
		end
	end

	private # what is private, hungry? and poopy? methods or these AND passage_of_time (which provides user output?!)

	def hungry?
		@full_belly <=2
	end

	def poopy?
		@ready_to_poop >=8
	end

	def passage_of_time
		
		if @full_belly > 0
			@full_belly = @full_belly - 1
			@ready_to_poop = @ready_to_poop + 1

		else
			if @asleep
				@asleep = false
				puts "He wakes up suddenly!"
			end

			puts "#{name} is starving!"
			exit #why do we need exit to 'quit' the program?
		end
		
		if @ready_to_poop >=10
			@ready_to_poop = 0 #return 0
			puts "Whoops, #{@name} has had an accident!"
		end
		
		if hungry? #not same as hungry? method, this is an if statement!
			if @asleep
				@asleep = false
				puts "he wakes up suddenly!"
			end
			puts "#{@name}\'s stomach grumbles..."
		end
		
		if poopy? #not same as poopy? method, this is an if statement!
			if @asleep
				@asleep = false
				puts "He wakes up suddenly!"
			end
			puts "#{@name} does potty dance."
		end
	end
end

# learnings - don't forget "interpolation needs double quotes" + must use @for all @instance variables + check number of ends!!

pet = Dragon.new('Norbert')
puts pet.feed
puts pet.toss
puts pet.walk
puts pet.put_to_bed
puts pet.rock
puts pet.put_to_bed
puts pet.put_to_bed
puts pet.walk

# unsure - how to increment @full_belly and @ready_to_poop...!  Is that what you might do...?!

# Interactive answer below:

# using the Dragon class from the chapter - see above
puts 'What would you like to name your baby dragon?'
name = gets.chomp
pet = Dragon.new(name)

while true
  	
  	puts "What activity would you like to do with #{name}: feed, walk, put to bed, toss, rock or nothing"
  	activity = gets.chomp

  	if activity == 'feed'
  		pet.feed
  	elsif activity == 'walk'
    	pet.walk	
    elsif activity == 'put to bed'
    	pet.put_to_bed
  	elsif activity == 'toss'
    	pet.toss
  	elsif activity== 'rock'
    	pet.rock
    elsif activity == 'nothing'
    	exit # can use to exit program
 
  	else
    	puts 'Please enter one of the commands listed only.'
  end
end


# ok that was fun, unlike some of the other CP horrors...