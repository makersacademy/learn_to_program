
class OrangeTree

def initialize
  @height = 0
  @tree_age = 0
  @oranges_on_tree = 0
  @growth_per_year = 0.4
  @life_status = true
end

def height
  if @life_status == true
    return @height
  else
    return "A dead tree is not very tall. :("
  end
end

def one_year_passes
  if @life_status == true
    @tree_age = @tree_age + 1
    @oranges_on_tree = 0
    @height = (@height + @growth_per_year).round(1)
    if @tree_age > 25
      @life_status = false
      return 'Oh, no! The tree is too old, and has died. :('
    elsif @tree_age >=5
      @oranges_on_tree = (@oranges_on_tree + (@height * 15 - 25)).round(0)
      return "This year your tree grew to #{@height}m tall, and produced #{@oranges_on_tree} oranges."
    else @tree_age <5
    return "This year your tree grew to #{@height}m tall but is still too young to bear fruit."
  end
  else
    return "A year later, the tree is still dead. :("
  end

end

def count_the_oranges
  if @life_status == true
    if @oranges_on_tree > 0
      return @oranges_on_tree
    else
      return "There are no oranges on the tree."
    end
  else
    return "A dead tree has no oranges. :("
  end
end

def pick_an_orange
  if @life_status == true
    if @oranges_on_tree > 0
      @oranges_on_tree = @oranges_on_tree - 1
      return "Mmmm, tasty!"
    else
      return "There are no oranges to pick!"
    end
  else
    return "A dead tree has nothing to pick. :("
  end
end
end

ot = OrangeTree.new

23.times do
  ot.one_year_passes
end
