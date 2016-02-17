class OrangeTree
	def initialize
		@height = 0
		@age = 0
		@fruits = 0
		self.height
    self.count_the_oranges
	end

	def height
    return "A dead tree is not very tall" if @age > 20
		@height < 100 ? "The tree is #{@height}cm tall." : "The tree is #{@height.to_f / 100}m tall."
	end

	def count_the_oranges
    return "A dead tree does not have any oranges" if @age > 20
		@fruits > 0 ? "There are #{@fruits} oranges." : "There are no oranges."
	end

	def pick_an_orange
    return "A dead tree does not have any oranges" if @age > 20
		if @fruits > 0
			@fruits -= 1
			"There are #{@fruits} oranges left."
		else
			"There are no oranges"
		end
	end

	def one_year_passes
		if @age <= 2 #no fruits
			@age += 1
			@height += 20

		elsif @age > 2 && @age <= 4
			@age += 1
			@height += 50
			@fruits = rand(13..25)  #some fruits

		elsif @age > 4 && @age <= 20
			@age += 1
			@fruits = rand(25..50) #lotsa fruits not growing anymore

		else
			#die
			"The tree is dead."
		end
		"This year your tree grew to #{@height}cm, and produced #{@fruits} oranges"
	end
end
