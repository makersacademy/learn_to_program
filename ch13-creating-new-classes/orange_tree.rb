
class OrangeTree

	def initialize
		@dead = false
		@height = 0
		@age = 0
		@orange_count = 0
	end

	def height
		if @dead == false
			@height.round(1)
		else
			'A dead tree is not very tall. :('
		end
	end	

	def age
		@age
	end

	def count_the_oranges
		if @dead == false
			@orange_count
		else
			'A dead tree has no oranges. :('
		end
	end

	def die?
		if @height > 10.1 && rand(2) > -1
			@dead = true
		end
		return @dead
	end		

	def one_year_passes
		if @dead
			'A year later, the tree is still dead. :('
		else
			@age += 1
			@height = @height + 0.4
			@orange_count = 0
			if self.die?
				"Oh, no! The tree is too old, and has died. :("
			elsif @height > 2
				@orange_count = (@height * 15 - 25).to_i
       			"This year your tree grew to #{@height.round(1)}m tall," +
          		" and produced #{@orange_count} oranges."
			else
				"This year your tree grew to #{@height.round(1)}m tall," +
          		" but is still too young to bear fruit."
			end
		end
	end

	def pick_an_orange
		if @dead == false
	      	if @orange_count > 0
		       	@orange_count = @orange_count - 1
		        "You pick a juicy, delicious orange!"
		    else
		        "You search every branch, but find no oranges."
	      	end
		else
		    "A dead tree has nothing to pick. :("
		end
	end
end


class MyOwnOrangeTree

	def initialize
		@dead = false
		@height = 0
		@age = 0
		@orange_count = 0
	end

	def height
		@height
	end

	def age
		@age
	end

	def orange_count
		@orange_count
	end

	def die?
		death_roll = 10 + rand(21)
		if death_roll <= @age   #chance of dieing increases with age
			@dead = true
		else
			@dead = false
		end
	end		

	def one_year_passes
		if @dead
			return "The orange tree is aleady long dead. :("
			#exit
		else
			@age += 1
			if self.die?
				return "The orange tree died this year. :(((("
				#exit
			else #tree is alive,lets produces fruits and gets taller!
				@height += 30 + rand(50)
				if @age >= 5
					@orange_count = @age * 20 + rand(@age*10)	
				end
				return "The orange tree is #{@age} years old and #{@height} cm heigh, currently has #{@orange_count} oranges."
			end
		end
	end

	def pick_orange(num)
		@num_to_pick = num
		@num_picked = 0
		if @num_to_pick > @orange_count
			@num_picked = @orange_count
			@orange_count -= @num_picked
		else
			@num_picked = @num_to_pick
			@orange_count -= @num_picked
		end
		return "#{@num_picked} oranges were picked, and there are #{@orange_count} left."
	end
end


tree1 = MyOwnOrangeTree.new
puts tree1.age
puts tree1.one_year_passes
puts tree1.one_year_passes
puts tree1.one_year_passes
puts tree1.one_year_passes
puts tree1.one_year_passes
puts tree1.one_year_passes
puts tree1.one_year_passes
puts tree1.pick_orange(50)
puts tree1.one_year_passes
puts tree1.pick_orange(500)
puts tree1.one_year_passes
puts tree1.one_year_passes
puts tree1.one_year_passes
puts tree1.one_year_passes
puts tree1.one_year_passes
puts tree1.one_year_passes
puts tree1.one_year_passes
puts tree1.one_year_passes
puts tree1.one_year_passes

