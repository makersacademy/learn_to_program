require_relative 'english_number'

def ninety_nine_bottles_of_beer(bottles)
  while bottles > 0
    if bottles > 2
      puts "#{english_number(bottles).capitalize} bottles of beer on the wall, #{english_number(bottles)} bottles of beer. Take one down, pass it around, #{english_number(bottles-1)} bottles of beer on the wall."
      bottles -= 1
    elsif bottles == 2
      puts "#{english_number(bottles).capitalize} bottles of beer on the wall #{english_number(bottles)} bottles of beer. Take one down, pass it around, #{english_number(bottles-1)} bottle of beer on the wall."
      bottles -=1
    else
      puts "#{english_number(bottles).capitalize} bottle of beer on the wall #{english_number(bottles)} bottle of beer. Take one down, pass it around, well... Now you're drunk arent you."
      bottles -=1
    end
  end
end

#ninety_nine_bottles_of_beer(5)
#ninety_nine_bottles_of_beer(9999)
