class BabyDragon
	def initialize name
		@name = name
		@food_level = 10
		@intestine_level = 0

		puts "Hail Dragonborn! #{@name} breathes fire. Welp!"
	end

	def feed
		puts "You feed #{@name}"
		@food_level = 10
		time_passes
	end

	def walk
		puts "You take #{@name} for a stroll...and a poop"
		@intestine_level = 0
		time_passes
	end
	
	def pat
		puts "You pat #{@name} on the head."
		time_passes
	end

	private

	def hungry?
		@food_level < 4
	end

	def poopy?
		@intestine_level > 7
	end

	def time_passes
		if @food_level > 0
			@food_level -= 1
			@intestine_level += 1
		else
			puts "You let #{@name} starve! He eats YOU instead!!!!"
			$dragonborn_alive = false
			return
		end

		if @intestine_level > 9
			@intestine_level = 0
			puts "#{@name} has just dumped a load right infront of you"
		end

		if hungry?
			puts "#{@name}'s belly starts rumbling..."
		end

		if poopy?
			puts "#{@name} farts."
		end
	end
end

$dragonborn_alive = true

puts "Welcome, Dragonborn. Please enter a name for your dragon"
name = gets.chomp
pet = BabyDragon.new name

while $dragonborn_alive
	puts "Please choose an option: feed, walk or pat"
	choice = gets.chomp.downcase

	case choice
		when "feed"
			pet.feed
		when "walk" 
			pet.walk
		when "pat"
			pet.pat
		else
			puts "That wasn't a valid choice..."	
	end
end
puts "Game over!"




=begin #testing
pet = BabyDragon.new "Albert"
pet.walk
pet.walk
pet.feed
pet.walk
pet.pat
pet.pat
pet.pat
pet.pat
pet.pat
pet.pat
pet.pat
pet.pat
pet.pat
=end