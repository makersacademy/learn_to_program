def old_roman_numeral num

  numerals_hash = { "M"=>1000,
                    "D"=>500,
                    "C"=>100,
                    "L"=>50,
                    "X"=>10,
                    "V"=>5,
                    "I"=>1}

numerals = ''

numerals_hash.each do |l, i|
    (num / i).times {numerals << l}
    num = num % i
  end

numerals

end
