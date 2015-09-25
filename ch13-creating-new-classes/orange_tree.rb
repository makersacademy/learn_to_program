class OrangeTree
	def initialize
		@age = 0
		@height = 1
		@orange_count = 0
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
			@height += 1
			@orange_count = 0
		end
		
		puts "one year passes. Its age is #{@age} and its 			#{height} meters tall"
		puts ""
		if @age > 4
			count_the_oranges
		end
	end
	
	def count_the_oranges
		@orange_count = 2 * @age
		puts "The tree produces #{@orange_count} oranges"
		puts "-------------------"
	end
	
	def pick_an_orange
		if @orange_count > 0
			@orange_count -= 1
			puts "We picked one orange. It was delicious! 				We have now #{@orange_count} oranges"
		else
			puts "There are no more oranges!"
		end
	end
	
	def die
		puts "The orange tree has died"
			
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
