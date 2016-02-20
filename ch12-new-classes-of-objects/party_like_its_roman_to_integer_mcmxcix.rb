def roman_to_integer roman
  # 1: Validate the roman numeral
  if roman =~ /[^MmDdCcLlXxVvIi]/
  	# If invalid, tell the user and exit.
  	puts "Oops. That is not a valid roman number."
  	exit
  else
  	# Upcase roman before beginning the translation. 
  	roman = roman.upcase
  	# Roman numeral exceptions
  	roman = roman.split("IV").push("4").inject(:+) if roman.include?("IV")
  	roman = roman.split("IX").push("9").inject(:+) if roman.include?("IX")
  	roman = roman.split("XL").push("S").inject(:+) if roman.include?("XL")
  	roman = roman.split("XC").push("T").inject(:+) if roman.include?("XC")
  	roman = roman.split("CM").push("U").inject(:+) if roman.include?("CM")
  	# hash of numerals and their arabic equivalents
  	arabic = { "I" => 1, "4" => 4, "V" => 5, "9" => 9, "X" => 10, "S" => 40, "L" => 50, "T" => 90, "C" => 100, "D" => 500, "U" => 900, "M"=> 1000 }
  	# translation
  	roman = roman.split("").collect do |numeral| 
  		arabic[numeral]
  	end
  end
  # total of all arabic numbers
  roman.inject(:+)
end

puts roman_to_integer "mcmxcix"