class OrangeTree
  def initialize
    @height = 0
    @orange_count = 0
    @age = 0
  end

def height
  if @age < 25
    @height.round(2)
  else
    "A dead tree is not very tall. :("
  end
end

def count_the_oranges
  if @age < 25
    @orange_count
  else
     "A dead tree has no oranges. :("
  end
end


def pick_an_orange
    if @orange_count == 0 && @age < 25
   "You search every branch, but find no oranges"
  elsif @age >= 25
   "A dead tree has nothing to pick. :("
  else
    @orange_count = @orange_count -1
  end
end

def one_year_passes
    @height = @height += 0.4
    @orange_count = 0
    @age = @age += 1

 if @age == 26
     "Oh, no! The tree is too old, and has died. :("
  elsif @age > 26
     "A year later, the tree is still dead. :("
  elsif  @age >= 5
    @orange_count = (@height * 15 - 25).to_i
    "This year your tree grew to #{@height.round(2)}m tall," + " and produced #{@orange_count} oranges."
 end
end
end
