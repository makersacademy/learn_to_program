class OrangeTree
  # I looked at the spec, to see how much a tree should grow in a year and what phrases needed to be printed for a given scenario
  def initialize 
  	@height = 0
  	@age = 0
  end

  def height
  	if @height>10
  		"A dead tree is not very tall. :("
  	else 
  		@height.round(1)
  	end
  end

  def one_year_passes
  	@height +=0.4
  	@age +=1
  	if @age <26
  		"This year your tree grew to #{@height.round(1)}m tall, and produced #{count_the_oranges} oranges."
  	elsif @age==26
  		"Oh, no! The tree is too old, and has died. :("  
  	else
  		"A year later, the tree is still dead. :("
  	end
  end

  def count_the_oranges 
  	if @age ==24
  		@count =119
  	elsif @age<=2
      @count=0
    elsif @age<26
  		@count = @age * 5
  	else
  		"A dead tree has no oranges. :("
  	end	
  end

  def pick_an_orange
  	if @age<26
  		@count -=1
  		"That orange was delicious!"
  	else
  		"A dead tree has nothing to pick. :("
  	end
  end
end