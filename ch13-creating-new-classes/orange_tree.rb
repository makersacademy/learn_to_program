class OrangeTree
	def initialize
		@height = 0
		@age = 0
		@oranges = 0
		"You have planted an orange tree all of your own."
	end
	def one_year_passes
		if @age == 20
			puts "Another year on and your tree is dead."
			exit
		else
			@age = @age + 1
			@height = @height + 1
			puts "Your tree has aged one year."
		end
		if @age > 3
			if @oranges == 1
				puts "1 orange has gone to waste this year as it was not picked."
			elsif @oranges > 1
				puts "#{@oranges} oranges have gone to waste this year as they were not picked."
			end
			@oranges = (2**@age)/5
		end
	end
	def height
		if @height == 1 
			puts "Your tree is one metre tall."
		else
			puts "Your tree is #{@height} metres tall."
		end
	end
	def count_the_oranges
		if @oranges == 1
			puts "There is 1 orange on your tree."
		else
			puts "There are #{@oranges} oranges on your tree."
		end
	end
	def pick_an_orange
		if @oranges == 0
			puts "There are no oranges on your stupid tree."
		else
			@oranges = @oranges - 1
			puts "The orange was delicious."
		end
	end
end


tree = OrangeTree.new

tree.height
tree.one_year_passes
tree.one_year_passes
tree.count_the_oranges
6.times do
	tree.one_year_passes
end
tree.count_the_oranges
tree.pick_an_orange
tree.one_year_passes
6.times do
	tree.pick_an_orange
end
6.times	do
	tree.one_year_passes
end
tree.height
tree.count_the_oranges
12.times do
	tree.one_year_passes
end

