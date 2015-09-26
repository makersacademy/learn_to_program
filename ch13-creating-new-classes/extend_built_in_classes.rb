class Integer
def factorial
if self < 0
return 'You can\'t take the factorial of a negative number!'
end
  if self <= 1
1
else
    self * (self-1).factorial
end
end




def roman_numeral
  thousands = self / 1000
  hundreds = self % 1000 / 100
  tens = self % 100 /10
  ones = self % 10 / 1

  roman = 'M' * thousands

  if hundreds == 9
    roman = roman + 'CM'
  elsif hundreds == 4
    roman = roman + 'CD'
  else
    roman = roman + 'D' * (self % 1000 / 500)
    roman = roman + 'C' * (self % 500 / 100)
  end

  if tens == 9
    roman = roman + 'XC'
  elsif tens == 4
    roman = roman + 'XL'
  else
    roman = roman + 'L' * (self % 100 / 50)
    roman = roman + 'X' * (self % 50 / 10)
  end

  if ones == 9
    roman = roman + 'IX'
  elsif ones == 4
    roman = roman + 'IV'
  else
    roman = roman + 'V' * (self % 10 / 5)
    roman = roman + 'I' * (self % 5)
  end
  roman
end
end
puts 9.factorial

puts 20.roman_numeral

class Array
  def shuffle
    recursive_shuffle self, []
  end

  def recursive_shuffle unshuffled, shuffled
  if unshuffled.length <= 0
    return shuffled
  end

  still_unshuffled = []
  unshuffled.each { |object|

    if rand < 0.5
      still_unshuffled.push object

    else
      shuffled_word = object
      shuffled.push shuffled_word
    end
       }

  recursive_shuffle still_unshuffled, shuffled
end
end

my_Array = ['hello','my','name','is','george']
puts my_Array.shuffle