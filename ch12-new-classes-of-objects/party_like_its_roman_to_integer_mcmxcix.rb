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


pnum = 0
index = roman.length - 1

while index >= 0
c = roman[index].upcase
index = index - 1
val = roman_numerals[c]
    if val < pnum
    val = val * -1
    else
    pnum = val
    end
integer += val
end

return integer

end

roman_to_integer("ccclxv")