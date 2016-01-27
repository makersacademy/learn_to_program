def roman_numeral num
# My answer for old_roman_numeral was too long so I've rewritten the more sussinct version (on my own) to use woth this challenge.

  output = ""

  output << "M" * (num / 1000)
  if num % 1000 / 100 == 9
    output << "CM"
  else
    output << "D" * (num % 1000 / 500)
    if num % 500 / 100 == 4
      output << "DC"
    else
      output << "C" * (num % 500 / 100)
    end
  end
  if num % 100 / 10 == 9
    output << "XC"
  else
    output << "L" * (num % 100 / 50)
    if num % 50 / 10 == 4
      output << "XL"
    else
      output << "X" * (num % 50 / 10)
    end
  end
  if num % 10 == 9
    output << "IX"
  else
    output << "V" * (num % 10 / 5)
    if num % 10 == 4
      output << "IV"
    else
      output << "I" * (num % 5)
    end
  end
 output
end

=begin
for i in (0..3000)
  puts "#{i} is: #{roman_numeral(i)}"
end




I = 1
V = 5
X = 10
L = 50
C = 100
D = 500
M = 1000
=end
