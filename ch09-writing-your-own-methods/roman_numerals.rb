def roman_numeral num
  # your cnum = num.to_i
  thousands = num/1000
  hundreds = (num-thousands*1000)/100
  tens = ((num-thousands*1000)-hundreds*100)/10
  units = (((num-thousands*1000)-hundreds*100)-tens*10)
  d = hundreds/5
  c = hundreds-(d*5)
  l = tens/5
  x = tens - (l*5)
  if units == 4
    unit_sym = "IV"
  elsif units == 9
    unit_sym = "IX"
  else
    v = units/5
    i = units - (v*5)
    unit_sym = "V"*v + "I"*i
  end
  return "M"*thousands + "D"*d +"C"*c +"L"*l +"X"*x + unit_sym
end
