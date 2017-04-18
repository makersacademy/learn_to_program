def old_roman_numeral num
  no_m = num / 1000
  num = num % 1000
  no_d = num / 500
  num = num % 500
  no_c = num / 100
  num = num % 100
  no_l = num / 50
  num = num % 50
  no_x = num / 10
  num = num % 10
  no_v = num / 5
  num = num % 5
  no_i = num / 1
  
 return ("M"*no_m) + ("D"*no_d) + ("C"*no_c) + ("L"*no_l) + ("X"*no_x) + ("V"*no_v) + ("I"*no_i)
end