def roman_to_integer(roman)
  values = { "M" => 1000,
  	"D" => 500,
  	"C" => 100,
  	"L" => 50,
  	"X" => 10,
  	"V" => 5,
  	"I" => 1 }

  	index = roman.length - 1
  	total = 0
  	prev = 0

  	while index >= 0
  		x = roman[index].capitalize
      val = values[x]

  		if val
  			if val < prev
  				val = val * - 1
  			else
          prev = val
  			end
        total = total + val
  		else
  			return "Not a valid roman nr"
  		end
  		index -= 1
  	end
  	return total
end

puts roman_to_integer("MCLIX")
puts roman_to_integer("MCLXI")
puts roman_to_integer("mcmxcix")