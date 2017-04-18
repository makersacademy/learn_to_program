class OrangeTree
  def initialize
    @height = 0
    @oranges = 0
    @age = 0
  end

  def height
    @age >= 26 ? 'A dead tree is not very tall. :(' : @height.round(1)
  end

  def count_the_oranges
    @age >= 26 ? 'A dead tree has no oranges. :(' : @oranges
  end

  def one_year_passes
    @height += 0.4
    @age +=1
    @oranges = (@height * 15 - 25).to_i if @age >=6


    if @age == 26
      'Oh, no! The tree is too old, and has died. :('
    elsif @age > 26
      'A year later, the tree is still dead. :('
    else
      "This year your tree grew to #{@height.round(1)}m tall, and produced #{@oranges} oranges."
  	end
  end

  def pick_an_orange
    if @age <= 25
      @oranges -= 1
      'You pick a juicy, delicious orange!'
    else
      'A dead tree has nothing to pick. :('
    end
  end
end

 ot = OrangeTree.new
 23.times do
   ot.one_year_passes
 end

 puts(ot.one_year_passes)
 puts(ot.count_the_oranges)
 puts(ot.height)
 puts(ot.one_year_passes)
 puts(ot.one_year_passes)
 puts(ot.one_year_passes)
 puts(ot.one_year_passes)
 puts(ot.one_year_passes)
 puts(ot.height)
 puts(ot.count_the_oranges)
 puts(ot.pick_an_orange)
