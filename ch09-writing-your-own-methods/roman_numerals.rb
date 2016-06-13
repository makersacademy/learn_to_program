def roman_numeral num

  numerals_hash = { "M"=>1000,
                    "IM"=>999,
                    "CM"=>900,
                    "D"=>500,
                    "CD"=>400,
                    "C"=>100,
                    "XC"=>90,
                    "L"=>50,
                    "XL"=>40,
                    "X"=>10,
                    "IX"=>9,
                    "V"=>5,
                    "IV"=>4,
                    "I"=>1}

numerals = ''

numerals_hash.each do |l, i|
    (num / i).times {numerals << l}
    num = num % i
  end

numerals

end
