def old_roman_numeral num
  base_5_convert(num.to_s[-4].to_i, 'M', '_') + 
  base_5_convert(num.to_s[-3].to_i, 'C', 'D') + 
  base_5_convert(num.to_s[-2].to_i, 'X', 'L') + 
  base_5_convert(num.to_s[-1].to_i, 'I', 'V')
end

def base_5_convert n, unit, tenth
  base5 = n.to_s(5)
  (tenth * base5[-2].to_i) + (unit * base5[-1].to_i) 
end
