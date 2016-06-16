def roman_to_integer roman
    
roman_numerals = {
    "M" => 1000,
    "D" => 500,
    "C" => 100,
    "L" => 50,
    "X" => 10,
    "V" => 5,
    "I" => 1,
}

integer = 0

numerals = roman.upcase.split("")

numerals.each do |x|
if roman_numerals.has_key?(x) == false
    puts "This is not a valid Roman Numeral"
    exit
end
end

numerals.each do |x|
    roman_numerals.each do |key, value|
    integer +=value if key == x
end
end

integer

end

roman_to_integer("MMMDCJ")