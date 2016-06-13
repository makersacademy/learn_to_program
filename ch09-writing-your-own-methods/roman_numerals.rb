def roman_numeral num

  numerals_hash = { "M"=>[1000, 500],
                    "D"=>[500, 100],
                    "C"=>[100, 50],
                    "L"=>[50, 10],
                    "X"=>[10, 5],
                    "V"=>[5, 1],
                    "I"=>[1, nil]



numerals = []

numerals_hash.each do |l, i|
    (num / i).times {numerals << l}
    num = num % i
  end





end
