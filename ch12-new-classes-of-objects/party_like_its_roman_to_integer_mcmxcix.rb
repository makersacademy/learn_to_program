def roman_to_integer roman

numeralsArray = roman.upcase.split("")

numeralsHash = {

"M"=> 1000, 
"CM"=> 900,
"D" => 500, 
"C" => 100, 
"XC" => 90, 
"L"=> 50, 
"X"=> 10, 
"IX"=>9,
"V"=> 5,
"IV"=>4,
"I"=> 1

}

romanDigits = 0
i=0

until i == numeralsArray.length

one = numeralsArray[i]
plusOne = numeralsArray[i+1]

if one == "I" && plusOne == "V" || one == "I" && plusOne == "X" || one == "X" && plusOne == "C" || one == "C" && plusOne == "M"

check = numeralsArray[i] + numeralsArray[i+1]
romanDigits += numeralsHash[check]
i += 2
else
romanDigits += numeralsHash[one]
i += 1
end

end

romanDigits

end

puts roman_to_integer("i")
puts roman_to_integer("CCCLXV")
puts roman_to_integer("mcmxcix")
puts roman_to_integer("xx")
puts roman_to_integer("iv")