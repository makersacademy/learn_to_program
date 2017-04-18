def roman_numeral num
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
  
  
 hunplus = ("M"*no_m) + ("D"*no_d) + ("C"*no_c) + ("L"*no_l) + ("X"*no_x)
  case num
  when 0
    hunplus
  when 1
    hunplus + "I"
  when 2
    hunplus + "II"
  when 3
    hunplus + "III"
  when 4
    hunplus + "IV"
  when 5
    hunplus + "V"
  when 6
    hunplus + "VI"
  when 7
    hunplus + "VII"
  when 8
    hunplus + "VIII"
  when 9
    hunplus + "IX"
  end
end


