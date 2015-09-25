class OrangeTree

def initialize
  @year = Time.now
  @height = 1
  @oranges = rand(8)


  def one_year_passes
    @year = @year + (2*7*24*60*60)
    @height = @height + 2
    puts "one year has passed you collected #{@oranges} this year"
    put "your tree grew #{@height} this year"
  end

  def tree_dies
    if @height >= 10
      puts "tree has died"
      exit
    end
end
