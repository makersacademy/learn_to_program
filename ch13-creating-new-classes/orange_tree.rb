# Orange tree. Make an OrangeTree class that has a height method that returns its height
# and a one_year_passes method that, when called, ages the tree one year. Each year the
# tree grows taller (however much you think an orange tree should grow in a year), and
# after some number of years (again, your call) the tree should die. For the first few
# years, it should not produce fruit, but after a while it should, and I guess that older
# trees produce more each year than younger trees...whatever you think makes the most
# sense. And, of course, you should be able to count_the_oranges (which returns the number
# of oranges on the tree) and pick_an_orange (which reduces the @orange_count by 1 and
# returns a string telling you how delicious the orange was, or else it just tells you
# that there are no more oranges to pick this year). Make sure any oranges you don’t pick
# one year fall off before the next year.

# in order to pass the rspec please follow the below rates of growth, orange production and age of death.
# have your OrangeTree grow by 0.4 per year.
# have it produce no oranges in its first 5 years
# starting in its sixth year have it produce oranges at a rate of (height * 15 - 25) per year.
# have the tree die after 25 years.
# check out the rspec spec/ch13/orange_tree_spec.rb to see what strings we're looking for in the responses.


class OrangeTree
	attr_accessor :height

	def initialize
		@height = 0
		@age = 0 # in years
	end

	def one_year_passes
		if @age < 25
			@height = (@height + 0.4).round(1); @age += 1; @fruit_produced = @height * 15 - 25 if @age > 5
			return "This year your tree grew to #{@height}m tall, and produced #{count_the_oranges} oranges."
		elsif @snuffed_out
			return "A year later, the tree is still dead. :("
		else
			@snuffed_out = true # rly ded
			@height = "A dead tree is not very tall. :("
			return "Oh, no! The tree is too old, and has died. :("
		end
	end

	def count_the_oranges
		@snuffed_out ? @fruit_produced = "A dead tree has no oranges. :(" : @fruit_produced.to_i
	end

	def pick_an_orange
		return "A dead tree has nothing to pick. :(" if @snuffed_out
	end
end
