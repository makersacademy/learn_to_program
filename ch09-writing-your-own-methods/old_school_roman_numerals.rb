def old_roman_numeral num
  thousands = num/1000
  hundreds = (num-thousands*1000)/100
  tens = ((num-thousands*1000)-hundreds*100)/10
  units = (((num-thousands*1000)-hundreds*100)-tens*10)
  d = hundreds/5
  c = hundreds-(d*5)
  l = tens/5
  x = tens - (l*5)
  v = units/5
  i = units - (v*5)

 puts "M"*thousands + "D"*d +"C"*c +"L"*l +"X"*x +"V"*v +"I"*i
end
