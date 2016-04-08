def roman_to_integer roman
  bits = { 1 => "I", 5 => "V", 10 => "X", 50 => "L", 100 => "C", 500 => "D", 1000 => "M" }
  bits = bits.invert
  final = 0
  previous_value = 0
  roman.upcase.reverse.each_char do |char|
  	chunk = bits[char]

  	return 'This is not a valid roman numeral!' if !chunk

  	if chunk >= previous_value
      previous_value = chunk
    else
      chunk = (("-" + chunk.to_s).to_i)
      previous_value = chunk
    end
  	final += chunk
  end
  final
end