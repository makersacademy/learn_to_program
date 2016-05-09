def roman_numeral (num)
    roman_map = {1000 => "M",  900 => "CM", 500 => "D",400 => "CD",100 => "C",90 => "XC",50 => "L",40 => "XL",10 => "X",9 => "IX",5 => "V",4 => "IV",1 => "I"}
    roman_str = ""
    while (num != 0)
    roman_map.each do |k,v|
    	roman_str << v*(num/k)
    	num = num % k
    end
    end

return roman_str
end
