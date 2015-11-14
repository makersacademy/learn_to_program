=begin
 check if the first two letters are in the hash
 add the result to the answer
  if not, treat the first letter as individual and look it up
  add the result to the answer
 now check the next two letters not yet evaluated

 e.g. mcmxcix
  MC - not a number
  M = 1000
  answer = 1000
  CM = 900
  answer = 1900
  XC = 90
  answer = 1990
  IX = 9
  answer = 1999

e.g. xiii
  XI - not a number
  X = 10
  answer = 10
  II - not a number
  I = 1
  answer = 11
  II not a number
  I = 1
  answer = 12
  I = 1
  answer = 13

=end

def romanlookup roman
  numerals = {
    "I"   => 1,
    "IV"  => 4,
    "V"   => 5,
    "IX"  => 9,
    "X"   => 10,
    "L"   => 50,
    "XC"  => 90,
    "C"   => 100,
    "D"   => 500,
    "CM"  => 900,
    "M"   => 1000
  }

  numerals[roman]

end


def roman_to_integer roman

  roman.upcase!

  return romanlookup(roman) if roman.length == 1

  answer = 0

  while roman != nil
#    check if the first two letters are in the hash
#    add the result to the answer
      if romanlookup(roman[0..1])
        answer = answer + romanlookup(roman[0..1])
        break if roman.length == 2
        roman = roman[2..-1]
      else
        answer = answer + romanlookup(roman[0])
        break if roman.length == 1
        roman = roman[1..-1]
      end
  end

  answer

end

puts roman_to_integer "I"

puts roman_to_integer "MCMXCIX"

puts roman_to_integer "CCCLXV"
