def roman_to_integer roman
      roman = roman.upcase
      numbers = {1000 => "M", 900 => "CM", 500 => "D", 400 => "CD", 100 => "C",
                  90 => "XC", 50 => "L", 40 => "XL", 10 => "X", 9 => "IX",
                  5 => "V", 4 => "IV", 1 => "I"}

      num_in = 0
      str = roman
      numbers.values.each do |roman|
        while str.start_with?(roman)
            num_in += numbers.invert[roman]
            str = str.slice(roman.length, str.length)
        end
      end

      return num_in
end
