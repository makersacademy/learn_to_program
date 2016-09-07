def roman_numeral num
	roman_letters = "IVXLCDM"
  mods = {:C => 100, :X => 10, :I => 1}

  roman = 'M' * (num / 1000)

  mods.each do |k, v|
  	digit = num % (10 * v) / v
  	id = roman_letters.index(k.to_s)

  	if (digit == 9) || (digit == 4)
  		roman += k.to_s + (digit == 9 ? roman_letters[id+2] : roman_letters[id+1])
  	else
  		roman += roman_letters[id+1] * (num % (10 * v) / (5 * v))
  		roman += roman_letters[id] * (num % (5 * v) / v)
  	end
  end

	roman
end