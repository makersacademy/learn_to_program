class OrangeTree
  def initialize
    @height = 0
    @age = 0
    @dead = false
    @orange_count = 0
  end
  def height
    @dead ? 'A dead tree is not very tall. :(' : @height.round(1)
  end
  def one_year_passes
    @age += 1
    @dead = @age > 25
    if !@dead then 
      @height += 0.4
      @orange_count = @height > 2.0 ? (@height * 15 - 25).to_i : 0
      if @orange_count > 0 then
        "This year your tree grew to #{'%.1f' % @height}m tall, and produced #{@orange_count} oranges."
      else
        "This year your tree grew to #{'%.1f' % @height}m tall, but is still too young to bear fruit."
      end
    else
      @orange_count = 0
      @age == 26 ? 'Oh, no! The tree is too old, and has died. :(' : 'A year later, the tree is still dead. :('
    end
  end
  def count_the_oranges
    @dead ? 'A dead tree has no oranges. :(' : @orange_count
  end
  def pick_an_orange
    return 'A dead tree has nothing to pick. :(' if @dead
    return 'There are no oranges left to pick.' if @orange_count == 0
    @orange_count -= 1
    "You picked an orange. The tree now has #{@orange_count} left."
  end 
end
