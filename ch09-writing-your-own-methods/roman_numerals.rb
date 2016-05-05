def roman_numeral (num)
    arr = []
    hash = {"M" => 1000, "CM" =>900, "D" => 500, "CD" => 400, "C" => 100, "XC" => 90, "L" => 50, "XL" => 40, "X" => 10, "IX" => 9, "V" => 5, "IV" => 4, "I" => 1}
    
    hash.each do |k,v|
        arr << (k * (num / v))
        num = num % v
    end
    
    arr.join
end