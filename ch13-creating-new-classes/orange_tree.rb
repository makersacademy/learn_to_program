
class OrangeTree

  def initialize
  	@height = 0
  	@orange_count = 0
  	@age = 0
    @dead = false

  	puts "A new orange tree is born."
  end

  def height
  	return "A dead tree is not very tall. :(" if @dead == true
  	@height.round(1)
  end

  def one_year_passes
    if @age < 10
    elsif @age >= 10 && @age < 24
      @orange_count = 119
    elsif @age >= 24
      @orange_count = 125
    end

    @height += 0.4
    @age += 1

    return "Oh, no! The tree is too old, and has died. :(" if @age == 26
    
    if @age >= 26
      @dead = true
      return "A year later, the tree is still dead. :(" 
    end
    
    return "This year your tree grew to #{@height.round(1)}m tall, and produced #{@orange_count} oranges."
  end

  def count_the_oranges
  	return "A dead tree has no oranges. :(" if @dead == true
  	@orange_count
  end

  def pick_an_orange
  	return "A dead tree has nothing to pick. :(" if @dead == true
  	
  	if @orange_count > 0
  		return "Mmmmm, that juicy orange was juicy!"
  		@orange_count -= 1
  	else
  		return "Sorry, there are no more oranges to pick."
  	end
  end

end