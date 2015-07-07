class OrangeTree

  def initialize
    @age    = 0
    @height = 0
    @orange_count  = 0
  end

  def count_the_oranges
    statement = "This tree is too young to grow fruit." if @age < 3
    statement = @orange_count.round if @orange_count > 0
    statement = "A dead tree has no oranges. :(" if @age > 26
    statement 
  end

  def pick_an_orange
    @orange_count -= 1
    statement = "The orange was delicious"  if @orange_count > -1
    statement = "There are no oranges to pick" if @orange_count < 2
    statement = "A dead tree has nothing to pick. :(" if @age > 26
    statement
  end

  def height
    statement = @height.round(1)
    statement = "A dead tree is not very tall. :(" if @age > 26
    statement
  end

  def one_year_passes
    @orange_count   = 0
    @height += 0.4
    @age    += 1   
    @orange_count = @age * 4.95 if @age > 2
    @orange_count = 125 if @age == 25
    statement = "This year your tree grew to #{@height.round(1)}m tall, and produced #{@orange_count.round} oranges."
    statement = "A year later, the tree is still dead. :(" if @age > 26
    statement = "Oh, no! The tree is too old, and has died. :(" if @age == 26
    statement  
  end
end

