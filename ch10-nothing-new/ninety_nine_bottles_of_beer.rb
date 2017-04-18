require './english_number.rb'

def beer_song(num)
  bottles = [num, 0].max

  while bottles > 0
    beer = bottles != 1 ? "bottles" : "bottle"
    puts "#{english_number(bottles).capitalize} #{beer} of beer on the wall,"
    puts "#{english_number(bottles).capitalize} #{beer} of beer,"
    puts "Take one down, pass it around,"
    bottles -= 1
    beer = bottles != 1 ? "bottles" : "bottle"
    puts "#{english_number(bottles).capitalize} #{beer} of beer on the wall."
  end

end


