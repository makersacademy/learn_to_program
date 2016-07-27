def old_roman_numeral(num)
  numerals = {"M" => 1000, "D" => 500, "C" => 100, "L" => 50, "X" => 10, "V" => 5, "I" => 1}
  roman = ""

    until num == 0 do
      numerals.each do |key,value|
        roman << (key * (num / value))
        num = num % value
      end
    end

  roman
end
