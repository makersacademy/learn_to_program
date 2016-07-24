require_relative 'english_number.rb'

def ninety_nine_bottles_of_beer_on_the_Wall(num)
  orig_num ||= num
  orig_num.times do
    print "#{english_number(num).capitalize} #{num == 1 ? "bottle" : "bottles"}" +
    " of beer on the wall, #{english_number(num)} #{num == 1 ? "bottle" : "bottles"}" +
    " of beer.\nTake one down and pass it around, " +
    "#{num == 1 ? "no more" : english_number(num - 1)} " +
    "#{(num == 1 or num == 2) ? "bottle" : "bottles"} of beer on the wall.\n\n"
    num -= 1
  end
end

ninety_nine_bottles_of_beer_on_the_Wall(99)
