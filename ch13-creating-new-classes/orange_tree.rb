class OrangeTree
  def initialize
  	@height = 1
  	@orange_count = 0 
  	@age = 0
  end

  def height
  	puts "The height of the tree is #{@height} m"
  end

  def one_year_passes
  	@age = @age + 1
  	@height = @height + 1
  	if @age >= 3
  		@orange_count = 0
  		@orange_count = @orange_count + 15
  	end
  	puts "The tree is #{@age} years old"

  end

  def count_oranges
  	if @age < 3 
  		puts "There are 0 oranges on the tree"
  	else
  		puts "There are #{@orange_count} oranges on the tree"
  	end
  end
  def pick_an_orange
  	if @age >= 3 && @orange_count > 0
  		puts "You picked an orange"
  		@orange_count = @orange_count - 1
  		if @orange_count > 1
  			puts "There are #{@orange_count} oranges on the tree"
  		elsif @orange_count = 1
  			puts "There is #{@orange_count} orange on the tree"
  		end
  	else 
  		puts "There are no oranges on the tree"
  	end
  end
end

