class OrangeTree
 def initialize
  @alive = true
  @age = 0
	@height = 1
	@orange_count = 0
end

public
def measure_height
	@height
end

def one_year_passes
	@age = @age + 1
  if @alive == true
    if @age > 5
		@orange_count = 0
		if @age > 15
		@orange_count = 40
		elsif @age > 10
		@orange_count = 30
		else @orange_count = 20
		end
      puts "Your tree grew to #{@height} feet tall and produced #{@orange_count} oranges"
    else puts "Your tree is dead"
    end
  if @age > 50
		puts 'The tree has died'
    @alive = false
	end
    if @alive == true
      @height = @height + 1.5
    end
end

def count_the_oranges
  if @alive == true
    @orange_count
  else return "The tree is dead so has no oranges"
  end
end

def pick_an_orange
  if @alive == true
    if @orange_count > 0
    @orange_count = @orange_count - 1
    return 'The orange was delicious'
    else return 'There are no oranges on the tree'
    end
  else return 'The tree is dead so has no oranges'
end
end
end
end