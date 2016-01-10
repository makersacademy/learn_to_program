def old_roman_numeral num
  numbers = {1000 => "M", 500 => "D", 100 => "C", 50 => "L", 10 => "X", 5 => "V", 1 => "I"}
  num_in_rom = ""
  numbers.each do |k, v|
    (num / k).times {num_in_rom << v; num -= k}
  end
  return num_in_rom

end
