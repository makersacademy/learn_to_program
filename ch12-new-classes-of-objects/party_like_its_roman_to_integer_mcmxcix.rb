def roman_to_integer roman
    roman = roman.upcase
    roman.gsub!("IX", "9 ")
    roman.gsub!("IV", "4 ")
    roman.gsub!("XC", "90 ")
    roman.gsub!("XL", "40 ")
    roman.gsub!("CM", "900 ")
    roman.gsub!("CD", "400 ")
    roman.gsub!("M", "1000 ")
    roman.gsub!("D", "500 ")
    roman.gsub!("C", "100 ")
    roman.gsub!("L", "50 ")
    roman.gsub!("X", "10 ")
    roman.gsub!("V", "5 ")
    roman.gsub!("I", "1 ")
    numbers = roman.split(" ")
    sum = []
    numbers.each do |n|
        sum << n.to_i
    end
    return sum.reduce(:+)
end

puts roman_to_integer "i"