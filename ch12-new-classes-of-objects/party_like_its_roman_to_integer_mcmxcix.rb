def roman_to_integer roman
  #roman.match(/M|CM|D|CD|C|XC|L|XL|X|IX|V|IV|I/)

#Approach one convert via gsub then convert each individual character one by one
 roman_numerals = { "I" => 1,
  "IV" => 4,
  "V" => 5,
  "IX" => 9,
  "X" => 10,
  "LX" => 40,
  "L" => 50,
  "LC" => 90,
  "C" => 100,
  "D" => 500,
  "DM" => 900,
  "M" => 1000
}


number = 0


roman = roman.upcase.gsub(/CM|CD|XC|XL|IX|IV/, "CM"=>"DCCCC","CD"=>"CCCC","XC"=>"LXXXX","XL"=>"XXXX","IX"=>"VIIII","IV"=>"IIII")

roman.each_char do |roman_letter|
  number += roman_numerals[roman_letter]
end
number
end

roman_to_integer("CCCLXV")