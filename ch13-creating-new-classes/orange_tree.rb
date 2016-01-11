# my attempt...

# class OrangeTree

# 	def initialize
# 		@height = 10
# 		@age = 1
# 		@oranges = 0
# 	end
  
# 	def height
# 		@height = @height + 10
# 		puts "Your orange tree is #{@height} centimetres tall."
# 	end

# 	def one_year_passes
# 		@age = @age += 1
# 		puts "Your orange tree is #{@age} years old."
# 	end

# 	def count_the_oranges
# 		if @age <= 5
# 			@oranges = 0
# 		elsif @age > 5 && @age < 10
# 			@oranges = 2*@age
# 		else
# 			@oranges = 5*@age
# 		end

# 		puts "Your orange tree has #{@oranges} oranges!"
# 	end

# 	def pick_the_oranges
# 		@oranges - 1
# 		if @oranges == 0
# 			puts "There are no more oranges on your tree this year."
# 		else
# 			puts "You picked an orange! That was a delicious orange."
# 		end
# 	end

# end

# my_orange_tree = OrangeTree.new

# puts my_orange_tree.height
# puts my_orange_tree.one_year_passes
# puts my_orange_tree.count_the_oranges
# puts my_orange_tree.pick_the_oranges
# puts my_orange_tree.one_year_passes
# puts my_orange_tree.count_the_oranges
# puts my_orange_tree.pick_the_oranges
# puts my_orange_tree.one_year_passes
# puts my_orange_tree.count_the_oranges
# puts my_orange_tree.pick_the_oranges
# puts my_orange_tree.one_year_passes
# puts my_orange_tree.count_the_oranges
# puts my_orange_tree.pick_the_oranges
# puts my_orange_tree.one_year_passes
# puts my_orange_tree.count_the_oranges
# puts my_orange_tree.pick_the_oranges
# puts my_orange_tree.one_year_passes
# puts my_orange_tree.count_the_oranges
# puts my_orange_tree.pick_the_oranges


# Chris Pine answer...

class OrangeTree
	def initialize
		@height = 0
		@orange_count = 0
		@alive = true
	end

	def height
		if @alive
			@height
		else
			'A dead tree is not very tall.  :('
		end
	end

	def count_the_oranges
		if @alive
			@orange_count
		else
			'A dead tree has no oranges.  :('
		end
	end

	def one_year_passes
		if @alive
			@height = @height + 0.4
			@orange_count = 0 # old oranges fall off

			if @height > 10 && rand(2) > 0
				# tree dies
				@alive = false
				'Oh no!  The tree is too old, and has died.  :('
			elsif @height > 2
				# new oranges grow
				@orange_count = (@height * 15 - 25).to_i
				"This year your tree grew to #{@height}m tall, and produced #{@orange_count} oranges."
			else
				"This year your tree grew to #{@height}m tall, but is still too young to bear fruit."
			end
		else
			'A year later, the tree is still dead.  :('
		end
	end

	def pick_an_orange
		if @alive
			if @orange_count > 0
				@orange_count = @orange_count - 1
				'You pick a juicy, delicious orange!'
			else
				'You search every branch, but find no oranges.'
			end
		else
			'A dead tree has nothing to pick.  :('
		end
	end
end

ot = OrangeTree.new
23.times do 
	ot.one_year_passes
end
	
puts(ot.one_year_passes)
puts(ot.count_the_oranges)
puts(ot.height)
puts(ot.one_year_passes)
puts(ot.one_year_passes)
puts(ot.one_year_passes)
puts(ot.one_year_passes)
puts(ot.one_year_passes)
puts(ot.height)
puts(ot.count_the_oranges)
puts(ot.pick_an_orange)
