require './english_number.rb'

def beer_song(n)
  puts "#{english_number(n).capitalize} #{n == 1 ? "bottle" : "bottles" } of beer on the wall,"
  puts "#{english_number(n).capitalize} #{n == 1 ? "bottle" : "bottles" } of beer."
  puts "Take one down, pass it around,"
  n -= 1
  puts "#{english_number(n).capitalize} #{n == 1 ? "bottle" : "bottles" } of beer on the wall."
  beer_song(n) unless n == 0
end

beer_song(9999)
