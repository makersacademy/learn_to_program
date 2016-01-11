def roman_numeral num
return "" if num == 0
step = [m = 1000,d = 500,c = 100,l = 50, x = 10, v = 5, i = 1].detect{|step| step<=num}
integer = (num - (num/step * step))


  if step == i #1
    return "IV" + roman_numeral(integer - (step - i)) if num == (v - i)
    "I" * (num/i) + roman_numeral(integer) #(4 -(1 - 1))
  elsif step == v #5
    return "IX" + roman_numeral(integer - (step - i)) if num == (x - i)
    "V" * (num/v) + roman_numeral(integer) # (4 - (5 - 5))
  elsif step == x #10
    return "XL" + roman_numeral(integer - (step - x)) if num < l && num >= (l-x) #(<50 && >=40)
    "X" * (num/x) + roman_numeral(integer)
  elsif step == l #50
    return "XC" + roman_numeral(integer - (step - x)) if num < c && num >= (c-x) #(<100 && >=90)
    "L" * (num/l) + roman_numeral(integer) #(24 - (50 - 50))
  elsif step == c #100
    return "CD"  + roman_numeral(integer - (step - c)) if num < d && num >= (d-c) #(<500 && >=400)
    "C" * (num/c) + roman_numeral(integer)
  elsif step == d #500
    return "CM"  + roman_numeral(integer - (step - c)) if num < m && num >= (m-c) #(<1000 && >=900)
    "D" * (num/d) + roman_numeral(integer)
  else
    "M" * (num/m) + roman_numeral(integer)
  end
end