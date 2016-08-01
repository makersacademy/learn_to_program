def roman_to_integer(roman)
  numerals = {"M" => 1000, "CM" => 900, "D" => 500, "CD" => 400, "C" => 100, "XC" => 90,
              "L" => 50, "XL" => 40, "X" => 10, "IX" => 9, "V" => 5, "IV" => 4, "I" => 1}

  int_num = 0

  roman.chars do |x|
    if numerals[x] == nil
      puts "This is not a valid integer."
    else
      int_num = int_num + numerals[x]
    end
  end

  int_num
end
