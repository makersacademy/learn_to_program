class OrangeTree

  attr_reader :age, :heigh, :orange_count

  def initialize
    @age           = 0
    @heigh         = 0
    @orange_count  = 0
  end

  def one_year_passes
    self.age += 1
    self.orange_count = ( Math.log( age * 100 ) ).ceil if age > 2
     death if age == 3 
     
    age
  end

  def count_the_oranges
    orange_count 
  end
  
  def pick_an_orange
    self.orange_count -= 1
  end

  def death
    self.nil
  end

private

  attr_writer :age, :heigh, :orange_count

end