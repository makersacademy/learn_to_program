class OrangeTree
  attr_accessor :orange_count, :age, :height
  def initialize
      @dead = false
      @age = 0
      @orange_count = 0
      @height = 0
end

  def one_year_passes
    @age = @age + 1
    if @age == 25
      @dead = true
      @height = 'A dead tree is not very tall. :('.to_s
      puts 'Oh, no! The tree is too old, and has died. :('
    elsif @age >= 26
      @dead = true
      @height = 'A dead tree is not very tall. :('.to_s
      puts 'A year later, the tree is still dead. :('
    else
    @orange_count = 0
    @orange_count = ((@age-3)*(@orange_count + 5.95)).ceil if @age > 3
    @height = (@age*(9.6/23.0)).round(1)
    puts "This year your tree grew to #{@height}m tall, and produced #{@orange_count} oranges."
  end
end
end

  def count_the_oranges
    if @dead == true
      puts 'A dead tree has no oranges. :('
      @orange_count = 0
    else
    return @orange_count
  end
end


  def pick_an_orange
    if @dead == true
      puts 'A dead tree has nothing to pick. :('
    elsif @age < 4
      puts "Too young for oranges!"
    elsif @age > 3 && @age <25
      if @orange_count >= 2
        @orange_count -= 1
        puts "That is one delicious orange. There are #{@orange_count} oranges left"
      elsif @orange_count == 1
        @orange_count -= 1
        puts "That is one delicious orange. There is only #{@orange_count} orange left"
      elsif @orange_count <= 0
        puts "There are no more oranges to pick!"
      end
    end
end

#done!
