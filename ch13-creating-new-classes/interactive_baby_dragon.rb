class Dragon

	def initialize name
		@name = name
		@asleep = false
		@stuff_in_belly 		= 10	# He's full. 
		@stuff_in_intestine = 0		# He doesn't need to go.
		@actions = ['feed', 'walk', 'toss', 'sleep', 'rock', 'quit']

		print_line
		puts "#{@name} is born."		
	end

	def action_time!
		display_actions
		get_action
	end

	def print_line
		puts "-" * 45
	end

	def feed
		print_line
		puts "You feed #{@name}." 
		@stuff_in_belly = 10 
		passage_of_time
		action_time!
	end

	def walk
		print_line
		puts "You walk #{@name}." 
		@stuff_in_intestine = 0
		passage_of_time
		action_time!
	end

	def sleep
		print_line
		puts "You put #{@name} to bed." 
		@asleep = true
		
		3.times do
			if @asleep 
				passage_of_time
			end
			if @asleep
		  	puts "#{@name} snores, filling the room with smoke."
			end
		end

		if @asleep
			@asleep = false
			puts "#{@name} wakes up slowly."
		end

		action_time!
	end

	def toss
		print_line
		puts "You toss #{@name} up into the air."
		puts 'He giggles, which singes your eyebrows.' 
		passage_of_time
		action_time!
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
		action_time!
	end

	def quit
		print_line
		puts "Thanks for playing!"
		exit
	end

	def display_actions
		puts
		puts "Actions: #{@actions.join(', ')}"
	end

	def get_action
		while true
			action = gets.chomp.strip.downcase
			if @actions.include?(action)
				dispatch(action)
				break
			else
				display_actions
			end
		end
	end

	private

	def dispatch action
		puts
		self.send(action)
	end

	def hungry?
		@stuff_in_belly <= 2
	end

	def poopy? 
		@stuff_in_intestine >= 8
	end

	def passage_of_time
		if @stuff_in_belly > 0
	    #  Move food from belly to intestine.
	    @stuff_in_belly     = @stuff_in_belly     - 1
	    @stuff_in_intestine = @stuff_in_intestine + 1
		else # Our dragon is starving! if @asleep
	    @asleep = false
			puts 'He wakes up suddenly!' 
		  puts "#{@name} is starving!  In desperation, he ate YOU!"
			exit # This quits the program. 
		end

		if @stuff_in_intestine >= 10 
			@stuff_in_intestine = 0
			puts "Whoops! #{@name} had an accident..."
		end

		if hungry? 
			if @asleep
		  	@asleep = false
				puts 'He wakes up suddenly!' 
			end
			puts "#{@name}'s stomach grumbles..." 
		end
	
		if poopy?
			if @asleep
		  	@asleep = false
				puts 'He wakes up suddenly!' 
			end
			puts "#{@name} does the potty dance..." 
		end
	end
end

puts "Enter a name for your pet DRAGON:"
name = gets.chomp.strip.upcase
pet = Dragon.new name

pet.action_time!