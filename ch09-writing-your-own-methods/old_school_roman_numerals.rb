def old_roman_numeral (num)
    arr = []
    hash = {"M" => 1000, "D" => 500, "C" => 100, "L" => 50, "X" => 10, "V" => 5, "I" => 1}
    
    hash.each do |k,v|
        arr << (k * (num / v))
        num = num % v
    end
    
    arr.join
end
