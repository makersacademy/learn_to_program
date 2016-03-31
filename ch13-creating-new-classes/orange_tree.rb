
class OrangeTree
  # your code here
  
  @@height_per_age = []
  26.times do |n|
      @@height_per_age << 0.4*(n+1)
  end
  @@height_per_age[24] = 9.6
  @@height_per_age[25] = 10.0
  
  @@oranges_per_age = []
  26.times do |n|
      @@oranges_per_age << (n+1)*5
  end
  @@oranges_per_age[24] = 119
  @@oranges_per_age[25] = 125
  
  def initialize
      @age = 0
      @height = 0
      @oranges_count = 0
  end
  
  def height
      if live?(@age)
        output = @height
      else
        output = 'A dead tree is not very tall. :('
      end
      output
  end
  
  def count_the_oranges
      if live?(@age)
          output = @oranges_count
      else
          output = 'A dead tree has no oranges. :('
      end
      output
  end
  
  def one_year_passes
      @age += 1
      if live?(@age)
        @height = @@height_per_age[@age]
        @oranges_count = @@oranges_per_age[@age]
        output = "This year your tree grew to #{@height}m tall, and produced #{@oranges_count} oranges."
      elsif @age ==26
        output = 'Oh, no! The tree is too old, and has died. :('
      else
        output = 'A year later, the tree is still dead. :('
      end
      output
  end
  
  def pick_an_orange
      if @age <= 25
          output = "hmm delicious orange"
          @oranges_count -= 1
      else
          output = 'A dead tree has nothing to pick. :('
      end
      output
  end
  
  private
  def live?(age)
    age <= 25
  end
  
end

#ot = OrangeTree.new
#23.times do
#    ot.one_year_passes
#end
#puts "este es el bueno:"
#ot.one_year_passes