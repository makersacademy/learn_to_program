class OrangeTree
  def initialize
    @alive = true
    @age = 0
    @height = 0
    @orange_count = 0
  end

  def one_year_passes
    @age += 1
    @height += 0.4
    @orange_count = (@height * 15 - 25).to_i
    "This year your tree grew to #{@height.round(1)}m tall, and produced #{@orange_count} oranges."
  end

  def count_the_oranges
    @orange_count
  end

  def pick_an_orange
    @orange_count -= 1
    'The orange was delicious.'
  end

  def height
    @height
  end
end