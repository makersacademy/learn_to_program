def old_roman_numeral num
  m = num / 1000
  current = num - m*1000
  d = current / 500
  current = current - d*500
  c = current / 100
  current = current - c*100
  l = current / 50
  current = current - l*50
  x = current / 10
  current = current - x*10
  v = current / 5
  current = current - v*5
  i = current
  "M"*m + "D"*d + "C"*c + "L"*l + "X"*x +  "V"*v + "I"*i
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
