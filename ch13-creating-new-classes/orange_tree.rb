class OrangeTree

  def initialize
    @age    = 0
    @height = 0
    @orange_count  = 0
  end

  def count_the_oranges
    count_response = "This tree is too young to grow fruit." if @age < 3
    count_response = @orange_count.round if @orange_count > 0
    count_response = "A dead tree has no oranges. :(" if @age > 26
    count_response 
  end

  def pick_an_orange
    @orange_count -= 1
    pick_response = "The orange was delicious"  if @orange_count > -1
    pick_response = "There are no oranges to pick" if @orange_count < 2
    pick_response = "A dead tree has nothing to pick. :(" if @age > 26
    pick_response
  end

  def height
    height_response = @height.round(1)
    height_response = "A dead tree is not very tall. :(" if @age > 26
    height_response
  end

  def one_year_passes
    @orange_count   = 0
    @height += 0.4
    @age    += 1   
    @orange_count = (@age * 6 - 25) 
    one_year_pass_response = "This year your tree grew to #{@height.round(1)}m tall, and produced #{@orange_count} oranges."
    one_year_pass_response = "A year later, the tree is still dead. :(" if @age > 26
    one_year_pass_response = "Oh, no! The tree is too old, and has died. :(" if @age == 26
    one_year_pass_response  
  end
end




