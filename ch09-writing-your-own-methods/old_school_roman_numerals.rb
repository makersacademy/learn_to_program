def old_roman_numeral num
  output = ""
  roman = {"M" => 1000, "D" => 500, "C" => 100, "L" => 50, "X" => 10, "V" => 5, "I" => 1 }

  roman.each do |k, v|
    if num / v > 0
  	  output << k*(num/v)
  	  num = num % v
    end
  end
  output
end