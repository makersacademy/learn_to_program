def roman_numeral num
  solution = []
  numerals = {"M"=>1000, "D"=>500, "C"=>100, "L"=>50, "X"=>10, "V"=>5, "I"=>1}
  counter = num

  if (num+1)%5 == 0
  	counter += 1
  	for numeral, decimal in numerals do
  		(counter/decimal).floor.times {solution << numerals.key(decimal)}
  		counter = counter%decimal
  	end
  	solution.insert(-2, "I")
	else
  	for numeral, decimal in numerals do
  		(counter/decimal).floor.times {solution << numerals.key(decimal)}
  		counter = counter%decimal
  	end
  end

  solution.join
end

p roman_numeral 4


# Modern Roman numerals. Eventually, someone thought it would be ter- ribly clever if putting a smaller number before a larger one meant you had to subtract the smaller one. As a result of this development, you must now suffer. Rewrite your previous method to return the new-style Roman numerals so when someone calls roman_numeral 4, it should return 'IV'.