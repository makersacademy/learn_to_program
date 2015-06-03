class OrangeTree
  def initialize name
    @name = name
    @height = 0
  	@oranges = 0
  	@age = 0
  	@age_at_death = 5 + rand(5)

  	puts "Your orange seedling, which you call #{name}, has begun to grow."
  end

  def time_passes
  	@height += 1
  	@age += 1
    puts "#{@name} sits in the gentle moonlight for another year."
  	if @age > 2
  	  @oranges += rand(5)
  	end
  	if
  	  @age == @age_at_death
  	  self.die
  	end
  end
  def pick_an_orange
  	if @oranges > 0
  		puts "you pick a delicious orange"
  		@oranges -= 1
  	else
  		puts "I'm afraid there are no more oranges left this year"
    end
  end
  def count_oranges
  	puts @oranges
  end

  def die
  	puts "The time has come, the orange tree, called #{@name}, is no more."
  	exit
  end
end


tree = OrangeTree.new "Charlotte"
tree.time_passes
tree.time_passes
tree.count_oranges
tree.time_passes
tree.time_passes
tree.count_oranges
tree.pick_an_orange
tree.pick_an_orange
tree.time_passes
tree.time_passes
tree.count_oranges
tree.time_passes
tree.time_passes
tree.time_passes