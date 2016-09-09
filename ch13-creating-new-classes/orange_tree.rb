class OrangeTree

	def initialize
		@height = 0
		@orangeCount = 0
		@age = 0

		puts "You have planted an Orange Tree."
	end


	def height
		if @height == 1
			puts "Your Orange Tree is #{@height.round(1)} meter tall!"
		else
			puts "Your Orange Tree is #{@height.round(1)} meters tall!"
		end
	end

	def count_the_oranges
		@orangeCount.round(1)
		puts "There are #{@orangeCount.round} oranges on your tree!"
	end

	def pick_an_orange
		if @orangeCount > 0
			puts "You just picked a delicious orange! Yummy."
			@orangeCount = @orangeCount.round(1) - 1
		else
			puts "Sorry, your tree has no oranges for you to pick. Come back next year!"
		end
	end

	def one_year_passes
    oneYearPasses
    @age + 1
    if @age >= 25
      @orangeCount = 0
      puts "Your Orange Tree has died! All it's friut are rotten. I'm sorry!"
    else
      puts "This year your tree grew to #{@height.round(1)}m tall, and produced #{@orangeCount.round} oranges."
      @orangeCount = 0
    end
	end

private

	def oneYearPasses
		@height = @height + 0.4
		@age = @age + 1
		if @age <= 5
			@orangeCount = @orangeCount
		else
			@orangeCount = (@height * 15 - 25).to_i
		end
	end
end

#ot = OrangeTree.new
#26.times do
#  ot.one_year_passes
#end


# in order to pass the rspec please follow the below rates of growth, orange production and age of death.
# have your OrangeTree grow by 0.4 per year.
# have it produce no oranges in its first 5 years
# starting in its sixth year have it produce oranges at a rate of (height * 15 - 25) per year.
# have the tree die after 25 years.
# check out the rspec spec/ch13/orange_tree_spec.rb to see what strings we're looking for in the responses.
