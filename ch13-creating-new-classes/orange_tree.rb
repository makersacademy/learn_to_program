# /usr/bin/env ruby

class OrangeTree

	def initialize
		@alive = true
		@height = 0
		@orange_count = 0
	end

	def pick
		if @alive
			if @orange_count > 0
				puts "You pick a delicious orange"
				@orange_count -= 1
			else
				puts "There are no oranges this year"
			end
		else
			puts "Your poor tree has died"
		end
	end

	def height
		if @alive
			puts "Your tree is now #{@height}cm tall"
		else
			puts "Your poor tree has died"
		end
	end

	def count_oranges
		if @alive
			puts "You have #{@orange_count} oranges on your tree"
		else
			puts "Your poor tree has died"
		end
	end

	def passage_of_time
		if @alive
			@height += 1
			@orange_count = 0
			if @height > 15
				@alive = false
				puts "Your poor tree has died"
			elsif @height > 3
				@orange_count = ((1 + rand()) * @height).to_i
				puts "Your tree is now #{@height}cm tall and has produced #{@orange_count} oranges this year"
			else
				puts "Your tree is #{@height}cm tall but is still too young to bear fruit"
			end
		else
			puts "Your poor tree has died"
		end
	end
end

tree = OrangeTree.new
tree.passage_of_time
tree.passage_of_time
tree.pick
4.times do 
	tree.passage_of_time
end

5.times do 
	tree.pick
end
tree.count_oranges
tree.height
tree.passage_of_time