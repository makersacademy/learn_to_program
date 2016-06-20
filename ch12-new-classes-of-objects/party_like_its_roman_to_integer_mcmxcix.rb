def roman_to_integer roman
  # your code here

  roman_numerals = {
      "M" => 1000,
      "D" => 500,
      "C" => 100,
      "L" => 50,
      "X" => 10,
      "V" => 5,
      "I" => 1,
  }

  converted_numeral = 0

  numerals = roman.upcase.split("")

  numerals.each do |num|
    if !roman_numerals.has_key?(num)
      puts "This is not a valid Roman Numeral"
      exit
    else
      roman_numerals.each do |key, value|
        if key == num
          converted_numeral += value
        end
      end
    end
  end

  converted_numeral

end

puts roman_to_integer("MMMciid")
