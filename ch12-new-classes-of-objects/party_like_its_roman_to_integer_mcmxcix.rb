def roman_to_integer roman
  hash = {"I" => 1, "IV" => 4, "V" => 5, "IX" => 9, "X" => 10, "XL" => 40, "L" => 50, "XC" => 90, "C" => 100, "CD" => 400, "D" => 500, "CM" => 900, "M" => 1000}

  total = 0
    prev = 0
    index = roman.length - 1
    while index >= 0
      c = roman[index].upcase
      index = index - 1
      val = hash[c]
      if !val
        puts 'Please enter a valid roman numeral'
        return
      end

      if val < prev
        val = val * -1
      else
        prev = val
      end
      total = total + val
    end

    total
end

  puts(roman_to_integer('mcmxcix'))
  puts(roman_to_integer('CCCLXV'))