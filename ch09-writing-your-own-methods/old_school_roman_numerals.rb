def old_roman_numeral num
    
    hash = { "M" => 1000, "D" => 500, "C" => 100, "L" => 50, "X" => 10, "V" => 5, "I" => 1 }
  
    answer = ""
  
    hash.each do |k, v|
        answer << k * (num/v) 
        num = num % v
    end
    
    answer
  
end