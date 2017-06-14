def roman_to_integer roman
  # your code here
  roman.upcase!
  numerals = {"M"=>1000, "CM"=> 900, "D"=>500, "CD"=>400, "C"=>100, "XC"=>90, "L"=>50, "XL"=>40, "X"=>10, "IX"=>9, "V"=>5, "IV"=>4, "I"=>1 }
    integer = 0
    i=0
    l = roman.length
    until i == (l) do
        if i < l-1
            r = roman[i]+roman[i+1]
            if numerals.keys.include?(r)
                integer += numerals[r]
                i+=2
            else
                integer += numerals[roman[i]]
                i+=1
            end
        else
            integer += numerals[roman[i]]
            i+=1
        end
    end
    return integer
end