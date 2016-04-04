class OrangeTree

	attr_accessor :height, :count, :age

	def initialize
		@height = 0.0
		@count = 0
		@age = 0

		puts "Your orange tree seed has just been sown.\nIt is literally 'budding' with potential...\nSorry."

	end

	def pick_an_orange
		if @age < 4 && count == 0
			puts "Your tree is too young to bear fruit.\nThe average orange tree bears fruit after roughly 3 years.\nPatience is a virtue...\nApparently."
		elsif @age >= 4 && count == 0
			puts "You have picked all the available oranges off your tree.\nYou'll have to wait for a year to pass now to get more oranges.\nI hope you shared..."
		else
		puts "Now that was a delicious orange.\nGood things really do come to those who wait.\nUnless your waiting in line for your court hearing about running that stupid red light."
		@count -= 1
		end

	end

	def one_year_passes
		@age += 1
		if @age == 1
			@height += 1.0
		elsif @height < 11.0
			@height += @height*(Math.log10(1.6))
		end
		@count = 0
		if @age > 35
			puts "Your tree has run the course of life and passed away.\nIt was good tree. We'll miss you Tree.\n(Very Sad Face)"
			exit
		end
	end

	def count_the_oranges

		if  @age < 30
			@count = 3 + (@age * 1.5)
			if (@count/6).round <= 1
			puts "Your tree has #{@count.round} oranges on it. Good news!.\nThis is enough to make #{(@count/6).round} can of delicious minute maid orange juice.\nHmmm..."
			else
			puts "Your tree has #{@count.round} oranges on it. Good news!.\nThis is enough to make #{(@count/6).round} cans of delicious minute maid orange juice.\nHmmm..."
			end
		elsif @age > 29
			@count = (@age * 1.3)
			puts "Your tree has #{@count.round} oranges on it. Good news!.\nYour tree is getting old now and is bearing less fruit.\nSad face"
		elsif @age < 4
			puts "Your tree is too young to bear fruit.\nThe average orange tree bears fruit after roughly 3 years.\nPatience is a virtue...\nApparently."
		end
	end

	def height
		if @height == 1.0
			puts "Your tree is #{@height.round} meter tall!\nJust a baby still!"
		else
			puts "Your tree is #{@height.round(1)} meters tall!\n"
		end
	end



end

	my_tree = OrangeTree.new

	37.times do

	puts my_tree.one_year_passes
	puts my_tree.height
	puts my_tree.pick_an_orange
	puts my_tree.count_the_oranges

	end
