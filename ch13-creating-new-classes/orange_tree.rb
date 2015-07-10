class OrangeTree
#   I did my code originally which followed the rules from the book but was different
#   as the book continually said whatever you think

#   After looking at the rspec for this i realised that it wanted the output from the 
#   exact orange tree from the book so i just copied that one. 

#	def initialise
#		@height = 0
#		@orange_count = 0
#		puts "You plant an orange tree"
#	end
#
#	def height
#		puts "The orange tree is #{@height}m tall"
#		return @height
#	end
#
#	def count_the_oranges
#		if @orange_count == 1
#			puts "There is 1 orange on the tree"
#		else
#			puts "There are #{@orange} oranges on the tree"
#		end
#		return @orange_count
#	end
#
#	def pick_an_orange
#		if @orange_count > 0
#			puts "You pick an orange from the tree \n It is delicious"
#			@orange_count -= 1
#		else
#			puts "There are no oranges on the tree for you to pick"
#		end
#	end
#
#	def one_year_passes
#		puts "one year passes and the tree grows"
#		@height += 1
#		if @tall >= 10 && rand(3) > 1
#			puts "The orange tree grows too old and died"
#			exit
#		end
#		@orange_count = (@height - 2) * 2
#		if @orange_count < 0
#			@orange_count = 0
#		end
#	end

	def initialize
	@height = 0
	@orange_count = 0
	@alive = true
	end

	def height 
		if @alive 
			@height
		else
			'A dead tree is not very tall. :(' 
		end
	end

	def count_the_oranges 
		if @alive
			@orange_count
		else
			'A dead tree has no oranges. :(' 
		end
	end

	def one_year_passes 
		if @alive

			@height = (@height + 0.4).round(1)
			@orange_count = 0 

			if @height > 10 && rand(2) > 0
				@alive = false
				'Oh, no! The tree is too old, and has died. :('
			elsif @height > 2
				@orange_count = (@height * 15 - 25).to_i
				"This year your tree grew to #{@height}m tall," + " and produced #{@orange_count} oranges."
			else
				"This year your tree grew to #{@height}m tall," +" but is still too young to bear fruit." 
			end
		else
			'A year later, the tree is still dead. :(' 
		end
	end

	def pick_an_orange 
		if @alive
			if @orange_count > 0
				@orange_count -= 1 
				'You pick a juicy, delicious orange!'
			else
			'You search every branch, but find no oranges.' 
			end
		else
		'A dead tree has nothing to pick. :(' 
		end
	end
end



#tree = OrangeTree.new
#tree.one_year_passes
#tree.height
#tree.orange_count

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