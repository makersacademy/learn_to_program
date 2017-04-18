class Dragon
	
	attr_accessor 'name'

	def initialize(name)
		@name = name
		@food_in_stomach = 5
		@food_in_intestine = 5
		@asleep = false
		puts
		puts "#{name} is born!"
		display_stats
	end

	def feed
		puts
		puts "You feed #{name}."
		@food_in_stomach = 10
		passage_of_time
	end

	def walk
		puts
		puts "You take #{name} for a walk."
		@food_in_intestine = 0
		passage_of_time
	end

	def put_to_bed
		puts
		puts "You put #{name} to bed."
		@asleep = true
		passage_of_time
	end

	def leave_it_be
		puts
		puts "You leave #{name} be."
		passage_of_time
	end

	def hungry?
		@food_in_stomach <= 2
	end

	def poopy?
		@food_in_intestine >= 8
	end

	def passage_of_time
		if @food_in_stomach > 0
			@food_in_stomach -= 1
			@food_in_intestine += 1
		else
			if @asleep
				puts
				puts "#{name} wakes up suddenly!"
				@asleep = false
			else
				puts "But #{name} is starving!  He eats YOU in desperation!"
				puts "GAME OVER"
				exit
			end
		end

		if hungry?
			if @asleep
				puts "But #{name} wakes up suddenly!"
				@asleep = false
			else
				puts "#{name}'s stomach is grumbling..."
			end
		end

		if poopy?
			if @asleep
				puts "But #{name} wakes up suddenly!"
				@asleep = false
			else
				puts "#{name} is doing the potty dance..."
			end
		end
		display_stats
	end

	def display_stats
		puts
		puts "----------------------------------------"
		puts "Food in stomach: #{@food_in_stomach}"
		puts "Food in intestine: #{@food_in_intestine}"
		puts "Sleep status: #{@asleep ? "asleep" : "awake"}"	
		puts "----------------------------------------"
		puts
	end
end

d1 = Dragon.new("Martin")
while true
	puts "What would you like to do?: "
	puts 
	puts "1. Feed #{d1.name}"
	puts "2. Walk #{d1.name}"
	puts "3. Put #{d1.name} to bed"
	puts "4. Leave #{d1.name} be"
	puts "5. Exit"
	
	input = gets.chomp
	if input == "1"
		d1.feed
	elsif input == "2"
		d1.walk
	elsif input == "3"
		d1.put_to_bed
	elsif input == "4"
		d1.leave_it_be
	elsif input == "5"
		exit
	end
end