require_relative 'english_number.rb'

def ninety_nine_bottles_of_beer_on_the_Wall(num)
  orig_num ||= num
  loop do
    if num == 1 #if num=1 write out the final message and break the loop
      print "#{english_number(num).capitalize} bottle of beer on the wall," +
      " #{english_number(num)} bottle of beer.\nTake #{english_number(num)}" +
      " down and pass it around, no more bottles of beer on the wall.\n\n"
      break
    else
      #english_number method is used to write out the numbers in English
      print "#{english_number(num).capitalize} bottles of beer on the wall, " +
      "#{english_number(num)} bottles of beer.\nTake one down and " +
      "pass it around, #{english_number(orig_num - (num - 1))} " +
      "bottles of beer on the wall.\n\n"
    end
    num -= 1
  end
end

ninety_nine_bottles_of_beer_on_the_Wall(99)
