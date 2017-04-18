def roman_to_integer roman
roman.upcase!
one_nums = {"M" => 1000,
    "D" => 500,
    "C" => 100,
    "L" => 50,
    "X" => 10,
    "V" => 5,
    "I" => 1
}
newnum = roman.gsub("IV", "IIII").gsub("XL", "XXXX").gsub("CD", "CCCC").gsub( "IX", "VIIII").gsub("XC", "LXXXX").gsub("CM", "DCCCC").gsub("XIX", "XIIIIIIIII")
counter = 0
arr = newnum.split("")
arr.each do |x| 
counter += one_nums[x]
end
counter
end

p roman_to_integer('xix')