def old_roman_numeral(num)
  roman_nums = {
    "M" => 1000,
    "D" => 500,
    "C" => 100,
    "L" => 50,
    "X" => 10,
    "V" => 5,
    "I" => 1
  }

  os_rom_num = ""

  roman_nums.each do |k, v|
    os_rom_num << k * (num / v)
    num = num % v
  end

  os_rom_num
end

puts old_roman_numeral(4)
puts old_roman_numeral(5)
puts old_roman_numeral(9)
puts old_roman_numeral(10)
puts old_roman_numeral(30)
