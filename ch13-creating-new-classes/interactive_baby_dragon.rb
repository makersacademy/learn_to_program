
class Dragon
	def initialize name
		@name = name
		@asleep = false
		@stuff_in_belly = 10
		@stuff_in_intestine = 0
		puts "#{@name} is born."
	end




	def feed
		puts "You feed #{@name}"
		@stuff_in_belly = 10
		passage_of_time
	end

	

	def toss #it doesn't really have an effect in thr dragon, rather confuses me!
		puts "You toss #{@name} up into the air."
		puts "He giggles, which singes your eyebrows."
	end

	def walk
		puts "You walk #{@name}"
		@stuff_in_intestine = 0 #everytime we walk him he poos
		passage_of_time
	end

	def put_to_bed
		puts "You put #{@name} to bed"
		@asleep = true
		3.times do 
			if @asleep
				passage_of_time #we pass this method 3 times
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

	def rock
		puts "You rock #{@name} gently."
		@asleep = true
		puts "He briefly dozes off..."
		passage_of_time
		if @asleep 
			@asleep = false #every time
			puts "... but wakes when you stop."
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
		#1st if
		if @stuff_in_belly > 0
			@stuff_in_belly -= 1
			@stuff_in_intestine += 1
		else #no food in his belly
			if @asleep 
				@asleep = false #he is hungry so he wakes up
				puts "He wakes up suddenly!"
			end
			puts "#{@name} is starving! In desperation he ate you!"
			exit #end of the program
		end
		#2nd if
		if @stuff_in_intestine >= 10
			@stuff_in_intestine = 0
			puts "Whoops! #{@name} had an accident..."
		end
		#3rd if
		if hungry?
			if @asleep
				@asleep = false
				puts "He wakes up suddenly!"
			end
			puts "#{@name}'s stomach grumbles..."
		end
		#4th and last if
		if poopy?
			if @asleep
				@asleep = false
				puts "He wakes up suddenly!"
			end
			puts "#{@name} does the pretty dance..."
		end
	end
end

puts "What is your new pet's name going to be?"
name = gets.chomp
pet = Dragon.new(name)


while true # it means that we are going to loop until we exit.
  puts "What do you want to do with #{name}?"
  puts 'You can: feed, toss, walk, rock, put to bed or exit'
  action = gets.chomp

  if action == 'exit'
    exit # this is the break that finishes our program
  elsif action == 'feed'
    pet.feed
  elsif action == 'toss'
    pet.toss
  elsif action == 'walk'
    pet.walk
  elsif action == 'rock'
    pet.rock
  elsif action == 'put to bed'
    pet.put_to_bed
  else
    puts 'Huh? Please choose one of the actions!'
  end
end