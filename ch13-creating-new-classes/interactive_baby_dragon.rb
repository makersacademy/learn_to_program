class Dragon

	def initialize name
		@name = name
		@asleep = false
		@stuff_in_belly = 10 # He's full.
		@stuff_in_intestine = 0 # He doesn't need to go.
		puts "#{@name} is born."
	end

	def feed
		puts "You feed #{@name}."
		@stuff_in_belly = 10
		passage_of_time
	end

	def walk
		puts "You walk #{@name}."
		@stuff_in_intestine = 0
		passage_of_time
	end

	def put_to_bed
		puts "You put #{@name} to bed."
		@asleep = true
		3.times do
			if @asleep
				passage_of_time
			end
			if @asleep
				puts "#{@name} snores, filling the room with smoke."# your code here
			end
		end
		if @asleep
			@asleep = false
			puts "#{@name} wakes up slowly."
		end
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

	def hungry?
		@stuff_in_belly <= 2
	end

	def poopy?
		@stuff_in_intestine >= 8
	end

	def passage_of_time
		if @stuff_in_belly > 0
		# Move food from belly to intestine.
			@stuff_in_belly = @stuff_in_belly - 1
			@stuff_in_intestine = @stuff_in_intestine + 1
		else # Our dragon is starving!
			if @asleep
				@asleep = false
				puts 'He wakes up suddenly!'
			end
			puts "#{@name} is starving! In desperation, he ate YOU!"
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

continue = true
while continue

	puts 'Right, can I interest you in a baby dragon?'
	response = gets.chomp.downcase

	if response[0,2] == 'ye'
		continue = false
		puts 'What would you like to call it?'
		name = gets.chomp.capitalize
		pet = Dragon.new name
		while response != "quit"
			puts "What would you like to do with #{name}?"
			puts "You can feed it, walk it, put it to bed, play with it, or rock it, or you can quit parenthood..."
			response = gets.chomp.downcase
			if response[/[(feed)(walk)(bed)(play)(rock)]/].nil? 
				puts "I can't help with that..."
			elsif response.scan(/(feed|walk|bed|play|rock)/).length > 1
				puts "One thing at a time please!"
			else
				pet.feed if not response[/feed/].nil?
				pet.walk if not response[/walk/].nil?
				pet.put_to_bed if not response[/bed/].nil?
				pet.toss if not response[/play/].nil?
				pet.rock if not response[/rock/].nil?
				puts "How is the parenting going?"
				puts "Happy to continue?"
				response = gets.chomp.downcase
				puts "Great.\nOnwards..." if response[0,2] == 'ye'
				if response[0,2] == 'no'
					puts "Are you sure. Do you want to quit?"
					response = gets.chomp.downcase
					if response[0,2] == 'ye' 
						response = 'quit' 
					else
						puts "Phew, for little #{name}'s sake. Onwards..."
					end
				end
			end
		end
	else
		puts 'Oh, then I can\'t help you. You sure?'
		response = gets.chomp.downcase
		continue = false if response[0,2] == 'ye'
	end

end