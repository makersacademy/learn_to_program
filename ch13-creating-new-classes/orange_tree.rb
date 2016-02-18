class OrangeTree
  
  def initialize
    @age = 0
    @orange_number = 0
    @tree_height = 0
  end
  
  def height
    @tree_height    
  end
  
  def one_year_passes
    @age += 1
    @tree_height += 10
    @orange_number = Math.sqrt(age).to_i if @age > 2
    
    if @age > 45
      puts "The treee is too old, and has died, while you plant a new one, this program will exit"
      exit(0)
    end
  end
  
  def count_the_oranges
    @orange_number
  end
  
  def pick_an_orange
    if @orange_number > 0
      @orange_number += 1
      "Yummi yummi yummi I love Cartman's Oranges in my tummy"
      
    else
      "No oranges left wait next year"
    end
  end
  
end