def roman_to_integer roman
    
    hash = {
        "M" => 1000,
        "CM"=> 900,
        "D"=> 500,
        "CD"=> 400,
        "C"=> 100,
        "XC"=> 90,
        "L"=> 50,
        "XL"=> 40,
        "X"=> 10,
        "IX"=> 9,
        "V"=> 5,
        "IV"=> 4,
        "I" => 1
    }
    
    roman_split = roman.upcase.chars
  
    new_roman = roman_split.each_with_index do |i, j|
                    if i == "C" && roman_split[j+1] == "M"
                        i << "M"
                        roman_split.delete_at(j+1)
                    elsif i == "C" && roman_split[j+1] == "D"
                        i << "D"
                        roman_split.delete_at(j+1)
                    elsif i == "X" && roman_split[j+1] == "C"
                        i << "C"
                        roman_split.delete_at(j+1)
                    elsif i == "X" && roman_split[j+1] == "L"
                        i << "L"
                        roman_split.delete_at(j+1)
                    elsif i == "I" && roman_split[j+1] == "X"
                        i << "X"
                        roman_split.delete_at(j+1)
                    elsif i == "I" && roman_split[j+1] == "V"
                        i << "V"
                        roman_split.delete_at(j+1)
                    end
                end
    
    
    integer = 0
    new_roman.each do |i|
        if hash.has_key?(i) == true
            integer += hash[i]
        end
    end
    
    return integer.to_s
  
end
