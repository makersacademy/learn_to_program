def roman_to_integer(roman)

	roman = roman.downcase

	return "Sorry, that is not a roman numeral" if roman =~ (/[^MDCLXVI]/i)

	conversion_doubles = {
  	"cm" => 900,
  	"cd" => 400,
  	"xc" => 90,
  	"xl" => 40,
  	"ix" => 9,
  	"iv" => 4
  }

  	conversion_singles = {
  	"m" => 1000,
  	"d" => 500,
  	"c" => 100,
  	"l" => 50,
  	"x" => 10,
  	"v" => 5,
  	"i" => 1	
  }

  integer = 0
 

while roman.length > 0
  conversion_doubles.each do |word, number|
  	if roman.include?(word)
  		integer += number
  		roman.slice!(word)
  	end
  end

  conversion_singles.each do |word, number|
  	if roman.include?(word)
  		integer += number
  		roman.slice!(word)
  	end
  end
 end
 
integer
end


roman_to_integer("ccclxv")
