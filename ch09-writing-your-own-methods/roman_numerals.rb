=begin
I = 1 V = 5 X = 10 L = 50
C = 100 D = 500 M = 1000

modern roman numerals:
  4 = IV
  9 = IX
  90 = XC
  900 = CM

=end


def roman_numeral num
    romanstring = ""

      romanstring << "M"*(num/1000)                 # Number of thousands

    if num % 1000 >= 900
      romanstring << "CM"
    else
      romanstring << "D"*(num % 1000 /500)          # Number of 500s
      romanstring << "C"*(num % 500/100)            # Number of 100s
    end

    if num % 100 >= 90
      romanstring << "XC"
    else
      romanstring << "L"*(num % 100/50)             # Number of 50s
      romanstring << "X"*(num % 50/10)              # Number of 10s
    end

    if num % 10 == 9
      romanstring << "IX"
    else
      romanstring << "V"*(num % 10/5)
      if num % 5 == 4
        romanstring << "IV"             # Number of 5s
      else
        romanstring << "I"*(num % 5)                  # Number of units
      end
    end


    romanstring
end

puts roman_numeral 1
puts roman_numeral 9
puts roman_numeral 24
puts roman_numeral 52
puts roman_numeral 89
puts roman_numeral 94
puts roman_numeral 934
