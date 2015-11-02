class OrangeTree
  def initialize
  	@height = 0
  	@fruit = false
  	@orange_count = 0
  	@dead = false
  	@age = 0
  end

  def one_year_passes
  	if @dead 
  		'The tree is dead'
  	else
  	@age += 1
  	@height = @height + 0.4
  	check_age
  	check_height
  	count_oranges
		if @age >= 3
	  		@fruit = true
	  		@orange_count +=1
	  	end
  	end
  	puts ''
  end

  def count_oranges
  	puts "The orange tree has #{@orange_count} number of fruits"
  end

  def pick_an_orange
  	@orange_count -= 1
  	puts "There are now #{@oranges} left on the tree"
  	if @orange_count == 0
  		puts "No more fruits left"
  	end
  end

  def check_age
  	if @age > 6
  		@height = 0
  		@fruit = false
  		@orange_count = 0
  		@dead = true
  		@age = 0
  		puts "The orange tree is dead."
  	else
  		puts "The orange tree is #{@age} years old"
  	end
  end

  def check_height
  	puts "The height of the orange tree is #{@height}"
  end
end

orange = OrangeTree.new
orange.check_height()
orange.one_year_passes()
orange.one_year_passes()
orange.one_year_passes()
orange.one_year_passes()
orange.one_year_passes()
orange.one_year_passes()
orange.one_year_passes()
orange.one_year_passes()
orange.one_year_passes()
orange.one_year_passes()