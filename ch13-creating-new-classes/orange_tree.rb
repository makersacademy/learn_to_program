=begin
class OrangeTree
    
    def initialize
        @height = 0
        @age = 0
        @oranges = 0
        @living = true
    end
    
    def height
        puts "The tree is #{@height} feet tall"
    end
    
    def one_year_passes
        @age += 1
        if @height <15
            @height += rand(1.0..2.0).round(2)
        else
            @height
        end
        
        if @age == 4
            @oranges = 5
        elsif @age > 4
            @oranges = rand(5..7) + @age
        else
            @oranges
        end
        
        if @age == rand(14..17)
            @living = false
        end
        
        if @living == false
            puts "Your orange tree lived long and provided you with many oranges, but now it's dead..."
            exit
        end
        
    end
    
    def count_the_oranges
        puts "There are #{@oranges} oranges on the tree"
    end
    
    def pick_an_orange
        @oranges -= 1 unless @oranges == 0
        
        if @oranges == 0
            "There arn't any oranges on the tree..."
        else
        puts "WOW! This looks like a tasty orange.... YUP! AMAZING!"
        end
    end
    
    
    
end
=end
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

