class OrangeTree
  def initialize 
  	@height = 0
  	@orange_count = 0
  	@alive = true
  end 

  def height
  	if @alive
  		@height
  	else 
  		'A dead tree is not very tall.'
  	end 
  end 

  
  def orange_count
  	if @alive
  	@orange_count
  else 'A dead tree has no oranges.'
  end
  end 

  def one_year_passes
  	if @alive
  		@height = @height + 0.5
  		@orange_count = 0

  		if @height > 11 && rand(3) > 0
  			@alive = false
  			'Tree has died'
  		elsif @height > 3
  			@orange_count = (@height * 15 - 25).to_i
  			puts "This year your tree grew to #{@height} m tall," + 
  			" and produced #{@orange_count} oranges."
  		else 
  			puts "This year your tree grew to #{@height} m tall," +
  			" but is still too young to bear fruit"
  		end 
  	else
  		'Tree is still dead'
  	end 
  end 
 

  def pick_up_orange
  	if @alive
  		if @orange_count > 0 
  			@orange_count = @orange_count - 1
  			'You have picked up an orange!'
  		else 
  			'There are no more oranges on your tree!'
  		end 
  	else
  		'There are no oranges on a dead tree!'
  	end 
  end 
end 

  ot = OrangeTree.new
  23.times do 
  	ot.one_year_passes
end 
 

puts(ot.one_year_passes)
puts(ot.orange_count)
puts(ot.height)
puts(ot.one_year_passes)
puts(ot.one_year_passes)
puts(ot.one_year_passes)
puts(ot.one_year_passes)
puts(ot.one_year_passes)
puts(ot.height)
puts(ot.orange_count)
puts(ot.pick_up_orange)
