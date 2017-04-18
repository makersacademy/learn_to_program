def roman_to_integer (roman)
    
    roman = roman.upcase
    
    hash = {"CM" =>900, "M" => 1000, "CD" => 400, "D" => 500, "XC" => 90, "C" => 100, "XL" => 40, "L" => 50, "IX" => 9, "X" => 10, "IV" => 4, "V" => 5, "I" => 1}
    
    puts "Please enter valid roman numeral." if roman =~ /[^CMDXLIV]/
    
    hash.each do |k, v|
        roman.gsub!(/#{k}/, " #{v} ")
    end
    
    eval(roman.strip.tr(" ", "+"))
end

