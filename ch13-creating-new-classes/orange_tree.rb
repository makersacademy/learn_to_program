#Since we need to have same Chris Pine's values tu pass the spec
#my program doesn't pass it even when it works.

class OrangeTree

  def initialize
	@height = 0 #in metres
	@age = 0 #in years
	@oranges = 0
	@alive = true
	puts "We have our first tree."
  end


  def height
  	if @alive
  	puts "The tree is #{@height} meters tall."
  else
  	puts "The tree is dead!"
  end
  end

  def one_year_passes 
  	if @alive
  	@age += 1
  	@height += 0.4 # to match spec we can't choose a value as the book sugested!
  	@oranges = 0
  	puts "A year passes, now the tree is #{@age} years old."
  	puts "It also grows, now it is #{@height} meters tall."
  	  if @age > 24
  		puts "But a time comes when the tree gets very old and dies!"
  		exit
  	  else
  	    if @height > 2
  		@oranges += (@height * 15 - 25).to_i
  		puts "Besides, the tree starts giving fruit!"
		elsif @height <= 2
  	  	puts "The tree is still to small to give fruits."
  	  	else 
  		@oranges += (@height * 12).to_i
  		puts "As time goes by, the tree gives more fruits, we have now #{@oranges} oranges!"
  	  	end
  	  end
    end
end

  def count_the_oranges
  	if @alive
  		@oranges
  	puts "We have #{@oranges}!"
  else
  	puts "The tree is dead we have no oranges."
  end
  end

  def pick_an_orange 
  	@oranges -= 1
  	puts "The orange was delicious!"
  	puts "But now we have #{@oranges} oranges left!"
  	if @oranges == 0
  		puts "There are no oranges left!"
  	end
    end
  end

  tree = OrangeTree.new
  23.times do 
  	tree.one_year_passes
  	end
