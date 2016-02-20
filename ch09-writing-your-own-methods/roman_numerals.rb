def roman_numeral num
  # I = 1 V=5 X=10 L=50 C=100 D=500 M= 1000
  # IV =4 IX=9 XL=40 XC = 90 CD=400 CM = 900
  to_return = ""
  roman_nums = {"M" => 1000, "CM" => 900, "D" => 500, "CD" => 400, "C" => 100, "XC" => 90, "L" => 50, "XL" => 40, "X" => 10, "IX" => 9, "V" => 5, "IV" => 4, "I" => 1}
  roman_nums.each do |key,value|
      x = num / value
      num -= x * value
      to_return << key * x
  end
 to_return
end