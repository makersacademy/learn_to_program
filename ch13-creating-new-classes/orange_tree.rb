
class OrangeTree

	def initialize
		@age = 0
		@height = 0
		@numberoranges = 0
	end

	def height
		puts "The tree is #{@height} feet tall."
	end

	def count_the_oranges
		puts "The tree has #{@numberoranges} oranges."
	end

	def pick_an_orange
		if @numberoranges < 1
			puts 'There are no oranges to pick.'
		else
			puts 'You pick an orange from the tree.'
				@numberoranges = @numberoranges - 1
		end
	end

	def one_year_passes
		puts 'One year passes'
		@age = @age + 1
		@height = @height + 1
		@numberoranges = 0

		if dead?
			puts 'The Orange Tree dies'
			exit
		end 

		if @age > 2
			@numberoranges = @age*20
			else
			@numberoranges = 0
		end

	end

	private

		def dead?
			@age > 5
		end

end

