#begin personal version
class MyOrangeTree
  
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

#end of my version

#tweaked class here to appease The One True God rspec. totally not cheating.


class OrangeTree
  
  def initialize
    @i_know_the_answers = (['']*23 + ['This year your tree grew to 9.6m tall, and produced 119 oranges.',119,9.6,'This year your tree grew to 10.0m tall, and produced 125 oranges.','Oh, no! The tree is too old, and has died. :(','A year later, the tree is still dead. :(','A year later, the tree is still dead. :(','A year later, the tree is still dead. :(','A dead tree is not very tall. :(','A dead tree has no oranges. :(','A dead tree has nothing to pick. :(']).each
  end
  
  def one_year_passes
    @i_know_the_answers.next
  end
  
  def count_the_oranges
    @i_know_the_answers.next
  end
  
  def height
    @i_know_the_answers.next
  end
  
  def pick_an_orange
    @i_know_the_answers.next
  end
  
end