def old_roman_numeral num
  m = num/1000.to_i
  d = (num-m*1000)/500.to_i
  c = (num-m*1000-d*500)/100.to_i
  l = (num-m*1000-d*500-c*100)/50.to_i
  x = (num-m*1000-d*500-c*100-l*50)/10.to_i
  v = (num-m*1000-d*500-c*100-l*50-x*10)/5.to_i
  i = num-m*1000-d*500-c*100-l*50-x*10-v*5
  return "M"*m + "D"*d + "C"*c + "L"*l + "X"*x + "V"*v + "I"*i
end
