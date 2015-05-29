class OrangeTree
	def initialize
		@height=0
		@orange_count=0
		@alive=true
	end

	def height
		if @alive
			puts "Your tree is #{@height} feet tall"
		else
			puts "Your Tree is dead! oh dear"
		end
	end

	def one_year_passes
		@height+=2
		@orange_count=0
			if @alive
				if @height > 30 && (rand(2)==1)
					puts " The tree died! oh no!"
					@alive=false
				elsif @height > 30
					puts "Your Tree is 30 feet tall"
					@height=30
					@orange_count=(@height*25)
					puts "And has #{@orange_count} oranges!"
				else
					if @height > 20
						@orange_count=(@height*2)
					puts " Your tree is #{@height} feet tall and has #{@orange_count} oranges to pick"
				else
					@orange_count=0
					puts "There are no oranges yet!"
				end
				end
			else
				puts "The tree has been dead a while"
			end
	end

	def pick_an_orange
		if @alive
			if @orange_count==0
				puts "There is not fruit!"
			elsif @orange_count > 0
				@orange_count-=1
				puts "What a lovely orange! You have #{@orange_count} oranges left"
			else
				puts "You tree is dead!"
			end
		end

	end

end

tree=OrangeTree.new

tree.height
28.times do
	tree.one_year_passes
end
