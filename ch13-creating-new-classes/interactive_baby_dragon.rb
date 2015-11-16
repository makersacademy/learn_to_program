# your code here

class Dragon

	def initialize name
		@name = name 
		@asleep = false
		@stuff_in_belly = 10 # This is when he is full
		@stuff_in_bowel = 0  # Does not need to shit

		puts "#{@name} is born."
	end

	def feed
		puts "You feed #{@name}."
		@stuff_in_belly = 10
		time_passes
	end

	def walk
		puts "You walk #{@name}."
		@stuff_in_bowel = 0 
		time_passes
	end

	def put_to_bed
		puts "You put #{@name} to bed."
		@asleep = true
		3.times do 
			if @asleep 
			time_passes 
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
		puts "You toss #{@name} up in the air."
		puts "He giggles, which singes your eyebrows."
		time_passes
	end
	def rock
		puts "You rock #{@name} gently."
		@asleep = true
		puts "He briefly dozes off..."
		time_passes
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
		@stuff_in_bowel >= 8
	end

	def time_passes
		if @stuff_in_belly > 0
			@stuff_in_belly -= 1
			@stuff_in_bowel += 1
		else # The little fucker is hungry
			if @asleep
				@asleep = false
				puts 'He suddenly wakes up!'
			end
			puts "#{@name} is starving! In desperation, he ate YOU!"
			exit
		end
		if @stuff_in_bowel >= 10
			@stuff_in_bowel = 0 # Well done, your dragon just shat himself!!
			puts "Whoops! #{@name} had an accident..."
		end
		if hungry?
			if @asleep
				@asleep = false
				puts 'He suddenly wakes up!'
			end
			puts "#{@name}'s stomach grumbles..."
		end
		if poopy?
			if @asleep
				@asleep = false
				'He suddenly wakes up!'
			end
			puts "#{@name} does the I-need-to-take-a-shit dance..."
		end
	end
end

puts 'What would you like to name your baby dragon?'
name = gets.chomp
pet = Dragon.new name

while true
  puts
  puts 'commands: feed, toss, walk, rock, put to bed, exit'
  command = gets.chomp

  if command.downcase == 'exit'
    exit
  elsif command.downcase == 'feed'
    pet.feed
  elsif command.downcase == 'toss'
    pet.toss
  elsif command.downcase == 'walk'
    pet.walk
  elsif command.downcase == 'rock'
    pet.rock
  elsif command.downcase == 'put to bed'
    pet.put_to_bed
  else
    puts 'Huh? Please type one of the commands.'
  end
end