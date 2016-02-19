
def roman_numeral num
  to_return = ""
  
  m = num / 1000
  current = num - m*1000
  c = current / 100
  current = current - c*100
  x = current / 10
  current = current - x*10
  i = current
  
  to_return << "M" * m
  
  if c > 0 and c < 4
     to_return << "C" * c
  elsif c == 4
    to_return << "CD"
  elsif c == 5
    to_return << "D"
  elsif c == 6
    to_return << "DC"
  elsif c == 7
    to_return << "DCC"
  elsif c == 8
    to_return << "DCCC"
  elsif c == 9
    to_return << "CM"
  end



  if x > 0 and x < 4
     to_return << "X" * x
  elsif x == 4
     to_return << "XL"
  elsif x == 5
     to_return << "L"
  elsif x == 6
    to_return << "LX"
  elsif x == 7
    to_return << "LXX"
  elsif x == 8
    to_return << "LXXX"
  elsif x == 9
    to_return << "XC"
  end

  
  if  i < 4
     to_return << "I" * i
  elsif i  == 4
     to_return << "IV"
  elsif i == 5
    to_return << "V"
  elsif i == 6
    to_return << "VI"
  elsif i == 7
    to_return << "VII"
  elsif i == 8
    to_return << "VIII"
  elsif i == 9
    to_return << "IX"
  end 
to_return
  end


#old_roman_numeral(1)
#old_roman_numeral(99)
#old_roman_numeral(1234)
#old_roman_numeral(287)

  #roman = Hash.new(0)
  #roman[1] = "I"
  #roman {
   # 1 => "I"
   # 5 => "V"
   # 10 => 
  # your code here



# take in a parameter (num) and return it as roman numerals
# we need to assign based on different things
# we can do it with division
# we can do it with length
# lets just return one digit
# so we return it as 5111 for 8
# lets forget about the roman part and see if we can do that
