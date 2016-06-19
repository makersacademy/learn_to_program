def roman_to_integer roman
arabic = 0
lv = {"M"=>1000, "CM"=>900, "D"=>500, "CD"=>400, "C"=>100, "XC"=>90, "L"=>50, "XL"=>40, "X"=>10, "IX"=>9, "V"=>5, "IV"=>4, "I"=>1}
lv.each_key do |rom|
    while roman.upcase.start_with?(rom)
      arabic += lv.values_at(rom).to_s.delete('[]').to_i
      roman = roman.slice(rom.length, roman.length)
    end
  end
  arabic
end
