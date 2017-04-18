require "./english_number.rb"

def beer_song(bottles)
  while bottles > 0
    puts "#{english_number(bottles)} of beer on the wall,"
    puts "#{english_number(bottles)} of beer,"
    puts "Take one down, pass it around,"
    bottles -= 1
    puts "#{english_number(bottles)} of beer on the wall."
  end
end
