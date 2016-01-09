class OrangeTree
  
  def initialize
      @height = 0
      @oranges = 0
  end
  
  def height
      @height
  end
  
  def one_year_passes
      @oranges = 0
      @height += 5
      if @height > 15
          @oranges = @height * 5
      else
          puts "Tree too young"
      end
  end
  
 
  
  def count_the_oranges
      @oranges
  end
  
  def pick_an_orange
      if @oranges > 0
        @oranges -= 1
        puts "It was delicious"
      else
        puts "No more oranges to pick"
      end
  end
  
end

