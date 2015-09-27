class OrangeTree
  def initialize tree
		@orange_count = 0
		@height = 0
		@alive = true

		puts "A new #{@tree} has taken roots"
end

def height
	if @alive
		@height
	else
		"a dead tree is not tall bro"
	end
end

def count_the_oranges
	if @alive
		@orange_count
	else
		"no oranges on this dead tree"
	end
end

def one_year_passes
	if @alive
		@height = @height + 0.4
		@orange_count = 0
		if @height > 10 && rand(2) > 0
			@alive = false
			"the tree has moved on to the next life"
		elsif @height >2
			@orange_count = (@height * 15 - 25).to_i
			"This year, the tree gre to #{@height}m tall, and produced #{@orange_count} oranges."
		else
			"This year the tree grea #{@height}, but it not yet yielding"
		end
	else
		"The three is an ex-tree."
	end
end

def pick_an_orange
	if @alive
		if @orange_count>0
			@orange_count = @orange_count-1
			"you got an orange"
		else
			"no oranges to pick"
		end
	else
		"The tree is an ex-tree"
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

			
