def roman_numeral num

  m = num/1000.to_i
  d = (num-m*1000)/500.to_i
  c = (num-m*1000-d*500)/100.to_i
  l = (num-m*1000-d*500-c*100)/50.to_i
  x = (num-m*1000-d*500-c*100-l*50)/10.to_i
  v = (num-m*1000-d*500-c*100-l*50-x*10)/5.to_i
  i = num-m*1000-d*500-c*100-l*50-x*10

  result = ""

  result << "M"*m

  if c == 9
    result << "CM"
  elsif c == 4
    result << "CD"
  else
    result << "D"*d + "C"*c
  end

  if x == 9
    result << "XC"
  elsif x == 4
    result << "XL"
  else
    result << "L"*l + "X"*x
  end

  if i == 9
    result << "IX"
  elsif i == 4
    result << "IV"
  else
    result << "V"*v + "I"*(i-v*5)
  end

  return result
  
end
