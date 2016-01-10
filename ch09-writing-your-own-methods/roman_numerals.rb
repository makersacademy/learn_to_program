def roman_numeral num
    numbers = {1000 => "M", 900 => "CM", 500 => "D", 400 => "CD", 100 => "C",
                90 => "XC", 50 => "L", 40 => "XL", 10 => "X", 9 => "IX",
                5 => "V", 4 => "IV", 1 => "I"}
    num_in_rom = ""
    numbers.each do |k, v|
      (num / k).times {num_in_rom << v; num -= k}
    end
    return num_in_rom
end
