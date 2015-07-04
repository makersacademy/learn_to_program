=begin
Orange tree. Make an OrangeTree class that has a height method that returns
its height and a one_year_passes method that, when called, ages the tree one
year. Each year the tree grows taller (however much you think an orange
tree should grow in a year), and after some number of years (again, your
call) the tree should die. For the first few years, it should not produce
fruit, but after a while it should, and I guess that older trees produce
more each year than younger trees…whatever you think makes the most
sense. And, of course, you should be able to count_the_oranges (which returns
the number of oranges on the tree) and pick_an_orange (which reduces the
@orange_count by 1 and returns a string telling you how delicious the orange
was, or else it just tells you that there are no more oranges to pick this
year). Make sure any oranges you don’t pick one year fall off before the
next year.
=end
require 'Time'

class OrangeTree

  def initialize
    @age = 0
    @height = 30
    @alive = true
    @orange_count = 0
  end

  def birthday
    @age+=1
    if @age<10
      puts "Another year has passed, your orange tree is now #{@age} years old!"
      @height+=15
      if @age >3
      # lose all old oranges & grow new crop
      @orange_count=@age*2
      end
    else
      # still alive until 10, then dies & exit prog
      puts "your orange tree has reached the ripe old age of 10 & passed on..."
      @alive = false
      exit
    end
  end

  def pick_an_orange
    #reduce orange count by one, return deliciousness string
    # don't go below 0 oranges!
    if @orange_count>0
      puts "mmmmm, that was bloody delicious!"
      @orange_count-=1
      puts "you've got #{@orange_count} left"
    else
      puts "that's a shame, there aren't any oranges left from this crop!"
    end
  end

  def count_the_oranges
    puts ""
    puts "there are #{@orange_count} oranges left on the tree"
  end

  def measure_the_tree
    puts ""
    puts "Your tree is now #{@height}cm tall!"

  end

  def alive?
    @alive
  end

  def interact
    # opportunity to query the tree
    puts ""
    puts "would you like to do any of the following?:"
    puts "1) find out how many oranges are on the tree this year"
    puts "2) taste one of the oranges"
    puts "3) measure how tall your tree is"
    puts "4) Give the tree a break! Leave it to hunker down for the winter..."
    puts "(Please just enter the number)"
    response=gets.chomp
    #Act on the request
    case response
      when "1"
        self.count_the_oranges
        interact
      when "2"
        self.pick_an_orange
        interact
      when "3"
        self.measure_the_tree
        interact
      when "4"
        puts"ok, good idea."
    end
  end

end

def main
  tree = OrangeTree.new
  while tree.alive?
      tree.birthday
      tree.interact
  end

end

main

