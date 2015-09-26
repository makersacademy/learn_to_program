class Dragon

def initialize(name)
	@name = name.capitalize
	@asleep = false
	@stuff_in_belly = 10
	@stuff_in_intestine = 0
	puts "#{name} is born!"
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
	puts "He giggles, which singes your eyebrows."
	passage_of_time
end

def rock
	puts "You rock #{@name} gently."
	@asleep = true
	puts "He briefly dozes off..."
	passage_of_time
	if @asleep
		@asleep = false
		puts "...but wakes when you stop."
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

puts "What would you like to name your dragon?"
name = gets.chomp
dragon = Dragon.new(name)

while true
	puts "Give your dragon a command. Please choose from the following:"
	puts "'feed', 'walk', 'put to bed', 'toss', 'rock' or 'exit' to leave the program."
	command = gets.chomp
	command.downcase!

	case command
	when 'feed' then dragon.feed
	when 'walk' then dragon.walk
	when 'put to bed' then dragon.put_to_bed
	when 'toss' then dragon.toss
	when 'rock' then dragon.rock
	when 'exit' then break
	else 
		puts "Error, no match!"
	end
end