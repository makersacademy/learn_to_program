def roman_numeral num
  numerals = {"M" => 1000, "D" => 500, "C" => 100, "L" => 50,
              "X" => 10, "V" => 5, "I" => 1}

  replacements = {"DCCCC" => "CM", "LXXXX" => "XC", "VIIII" => "IX",
                  "CCCC" => "CD", "XXXX" => "XL", "IIII" => "IV"}

  roman = ""

    until num == 0 do
      numerals.each do |key,value|
        letters = (key * (num / value))
        replacements.each{|k,v| letters == k ? letters = v : letters}
        roman << letters
        num = num % value
      end
    end

  roman
end
