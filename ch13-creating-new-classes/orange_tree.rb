class OrangeTree
	attr_reader :age

  def initialize
	@age = 0
	@height = 0
	@oranges = 0
  end
  @@c = 0
  def one_year_passes
  	if @@c == 0
	  	if dead?
	  		@@c += 1 
	  		"Oh, no! The tree is too old, and has died. :("
	  	else
	  		@oranges += 5 if @age >= 2 && @age <= 14
  			@oranges += 6 if @age >= 15 && @age <= 25
	  		@age += 1
  			@height += 0.4
  			"This year your tree grew to #{@height.round(2)}m tall, and produced #{@oranges} oranges."
	  	end
	else
		"A year later, the tree is still dead. :("
	end

  end

  def count_the_oranges
  	dead? ? "A dead tree has no oranges. :(" : @oranges
  end

  def pick_an_orange
  	dead? ? "A dead tree has nothing to pick. :(" : @oranges -= 1
  end

  def height
  	dead? ? "A dead tree is not very tall. :(" : @height.round(2)
  end

  def dead?
  	 @age >= 25
  end

end