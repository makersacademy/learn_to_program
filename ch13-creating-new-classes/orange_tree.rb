class OrangeTree
	def initialize
		@age = 0
		@height = 0
		@orange_count = 0
		@alive = true
		puts "A new orange tree is growing!"
	end
	
	def height
		@height
	end
	def one_year_passes
		
		if @age >= 10
			return die
		else
			@age += 1
			@height += 0.4
			@orange_count = 0
		end
		
		"This year your tree grew to #{@height}m tall," +
" and produced #{@orange_count} oranges."
		puts ""
		if @age > 4
			count_the_oranges
		end
	end
	
	def count_the_oranges
		@orange_count = (@height * 15 - 25).to_i
		if @alive
			puts "The tree produces #{@orange_count} oranges"
			puts "-------------------"
		else
			puts "The tree's dead and has no oranges"
		end
	end
	
	def pick_an_orange
		if @orange_count > 0
			@orange_count -= 1
			puts "We picked one orange. It was delicious! The tree now has #{@orange_count} oranges"
		else
			puts "There are no more oranges!"
		end
	end
	
	def die
		@alive = false
		puts "The orange tree has died :("
			
	end
end

x = OrangeTree.new
x.one_year_passes
x.one_year_passes
x.one_year_passes
x.one_year_passes
x.one_year_passes
x.one_year_passes
x.one_year_passes
x.one_year_passes
x.one_year_passes
x.one_year_passes
x.one_year_passes
x.one_year_passes
x.count_the_oranges
x.count_the_oranges
x.count_the_oranges

x.count_the_oranges

puts "**************"

x.pick_an_orange
x.pick_an_orange
x.pick_an_orange
x.pick_an_orange
x.pick_an_orange
x.pick_an_orange
x.pick_an_orange
x.pick_an_orange
x.pick_an_orange
x.pick_an_orange
x.pick_an_orange
x.pick_an_orange
x.pick_an_orange
x.pick_an_orange
x.pick_an_orange
x.pick_an_orange
x.pick_an_orange
x.pick_an_orange
x.pick_an_orange
x.pick_an_orange
x.pick_an_orange
