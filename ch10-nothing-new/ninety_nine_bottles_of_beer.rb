require './english_number.rb'

class Bottle_Song
  def initialize(number)
    @number = number < 0 ? 0 : number
  end

  attr_accessor :number

  def print_song
    while self.number > 0
        puts "#{english_number(self.number).capitalize} #{self.number == 1? "bottle" : "bottles"} of beer on the wall,"
        puts "#{english_number(self.number).capitalize} #{self.number == 1? "bottle" : "bottles"} of beer,"
        puts "Take one down, pass it around,"
        self.number -= 1
        puts "#{english_number(self.number).capitalize} #{self.number == 1? "bottle" : "bottles"} of beer on the wall."
    end
  end
end