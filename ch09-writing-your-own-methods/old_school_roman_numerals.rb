def old_roman_numeral num
output = ""
  if num / 1000 != 0
    output << "M" * (num / 1000)
    num -= (num/1000)*1000
  end
  if num / 500 != 0
    output << "D" * (num / 500)
    num -= (num/500)*500
  end
  if num / 100 != 0
    output << "C" * (num / 100)
    num -= (num/100)*100
  end
  if num / 50 != 0
    output << "L" * (num / 50)
    num -= (num/50)*50
  end
  if num / 10 != 0
    output << "X" * (num / 10)
    num -= (num/10)*10
  end
  if num / 5 != 0
    output << "V" * (num / 5)
    num -= (num/5)*5
  end
  if num / 1 != 0
    output << "I" * (num / 1)
    num -= (num/1)*1
  end

output
end


#p old_roman_numeral 15999

=begin
I = 1
V = 5
X = 10
L = 50
C = 100
D = 500
M = 1000
=end
