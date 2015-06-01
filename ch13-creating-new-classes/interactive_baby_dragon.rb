class Dragon
	def initialize name
		@name = name
		@asleep = false
		@stuff_in_belly = 10 # He's full
		@stuff_in_intestine = 0 # He doesn't need to go

		puts "#{@name}."
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
				puts "#{@name} snores, filling the room with smoke."
			end
		end
		if @asleep
			@asleep = false
			puts "#{@name} wakes up slowly."
		end
	end

	def toss
		puts "You toss #{@name} up into the air."
		puts "She giggles, which singes your eyebrows."
		passage_of_time
	end

	def rock
		puts "You rock #{@name} gently."
		@asleep = true
		puts 'She briefly dozes off...'
		passage_of_time
		if @asleep
			@asleep = false
			puts '... but wakes when you stop.'
		end
	end

	private

	def hungry?
		@stuff_in_belly <= 2
	end

	def poopy?
		@stuff_in_intenstine >= 8
	end

	def passage_of_time
		if @stuff_in_belly > 0

			@stuff_in_belly = @stuff_in_belly - 1 
			#stuff_in_intestine = @stuff_in_intestine + 1
		else
			if @asleep
				@asleep = false
				puts 'She wakes up suddenly!'
			end
			puts "#{@name} is starving! In desperation, she ate YOU!"
			exit
		end

		if @stuff_in_intestine >= 10
			@stuff_in_intestine = 0
			puts "Whoops! #{@name} had an accident..."
		end

		if hungry?
			if @asleep
				@asleep = false
				puts 'She wakes up suddenly!'
			end
			puts "#{@name} does the potty dance..."
		end
	end

end

puts 'Every dragon should have a name, what are you gonna call her?'
name = gets.chomp
dragon = Dragon.new name

while true
	puts 'commands: feed, walk, rock, put to bed, toss, exit'
	command = gets.chomp

	if command == 'exit'
		exit
	elsif command == 'feed'
		dragon.feed
	elsif command == 'walk'
		dragon.walk
	elsif command == 'rock'
		dragon.rock
	elsif command == 'put to bed'
		dragon.put_to_bed
	elsif command == 'toss'
		dragon.toss
	else
		puts 'That is not a valid command'
	end
end