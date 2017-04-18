NUMERALS = {
    1000 => "M",
    900 => "MD",
    500 => "D",
    400 => "DC",
    100 => "C",
    90 => "CL",
    50 => "L",
    40 => "LX",
    10 => "X",
    9 => "IX",
    5 => "V",
    4 => "IV",
    1 => "I"
  }

def roman_numeral(num)
    # your code here
    n = num
    numbers = ""
    NUMERALS.each do |english, roman|
      numbers << roman * (n / english)
      n = n % english
    end
    p numbers
  end


roman_numeral(129)




#“Modern” Roman numerals. Eventually, someone thought it would be terribly clever
#if putting a smaller number before a larger one meant you had to subtract the
#   smaller one. As a result of this development, you must now suffer. Rewrite your
#   previous method to return the new-style Roman numerals so when someone calls
#   roman_numeral 4, it should return 'IV'.
#Mybetisthatitwasa stone carver in some year that ended in a 9, tasked with dating
#public buildings or statues or something.
