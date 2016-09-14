require_relative 'english_number'


def ninety_nine_bottles_of_beer n = 99
    m = english_number(n)
    while n > 0
        puts "#{m.capitalize} bottles of beer on the wall, #{m} bottles of beer!"
        n -= 1
        m = english_number(n)
        puts "Take one down, pass it around, #{n > 0 ? m : 'no more'} bottle#{n == 1 ? '' : 's'} of beer on the wall!"
    end
end

ninety_nine_bottles_of_beer