class OrangeTree
  def initialize
    @height = 0
    @orange_count = 0
    @alive = true
  end

  def height
    if @alive
      @height.round(1)
    else
      'A dead tree is not very tall. :('
    end
  end

  def count_the_oranges
    if @alive
      @orange_count
    else
      'A dead tree has no oranges. :('
    end
  end

  def one_year_passes
    if @alive
      @height = @height + 0.4
      @orange_count = 0 # old oranges fall off
      if @height > 10 && rand(2) > 0
        # tree dies
        @alive = false
        'Oh, no! The tree is too old, and has died. :('
      elsif @height > 2
        # new oranges grow
        @orange_count = (@height * 15 - 25).to_i
        "This year your tree grew to #{@height.round(1)}m tall," +
          " and produced #{@orange_count} oranges."
      else
        "This year your tree grew to #{@height.round(1)}m tall," +
          " but is still too young to bear fruit."
      end
    else
      'A year later, the tree is still dead. :('
    end
  end

  def pick_an_orange
    if @alive
      if @orange_count > 0
        @orange_count = @orange_count - 1
        'You pick a juicy, delicious orange!'
      else
        'You search every branch, but find no oranges.'
      end
    else
      'A dead tree has nothing to pick. :('
    end
  end
end



=begin

class OrangeTree
  def initialize
    @age = 0
    @height = 0
    @fruit = 0
  end


def age
  @age
end

def twenty
  @age += 15
end

def count_the_oranges
  if @age > 20
    puts "A dead tree has no oranges"
  else
  @fruit
end
end

  def height
    if @age > 20
      puts "A dead tree is not very tall"
    else
    @height
  end

  end

def pick_an_orange
  if @age > 20
    puts "a dead tree gives no fruit"
  else


  if @fruit != 0
  @fruit -= 1
  puts "Hmmm how delicious!"
  else
    puts "There are no more oranges!"
  end
end
end

def one_year_passes
  if @age > 20
    puts "A year later the tree is still dead"
    @fruit = 0


  elsif @age == 20
    puts "you killed me!"
    @fruit = 0
    @age += 1
  else
    @age += 1
    @height += 4
    @fruit = 0

      if @age >= 3
        @fruit += 6+(@age-3)
      end
  p "This year your tree grew to #{@height} tall, and produced #{@fruit} oranges".
end
end

end

tree = OrangeTree.new



p tree.count_the_oranges #0
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
p tree.height # 1.2
tree.pick_an_orange # deliciious
p tree.count_the_oranges # 19
tree.one_year_passes
p tree.twenty
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
p tree.pick_an_orange
tree.one_year_passes
tree.height
tree.pick_an_orange
tree.count_the_oranges
tree.one_year_passes
=end

