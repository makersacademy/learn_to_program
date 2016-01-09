def roman_to_integer roman
  # your code here
  numbers = {}
  numbers["i"] = 1
  numbers["v"] = 5
  numbers["x"] = 10
  numbers["l"] = 50
  numbers["c"] = 100
  numbers["d"] = 500
  numbers["m"] = 1000

  number = 0

  a = roman.downcase.split("")

  a.each_index do |i|
  	number = number + numbers[a.fetch(i)]
  	unless i == 0
  		if (a.fetch(i) == "v" || a.fetch(i) == "x") && a.fetch(i-1) == "i"
  			number = number - 2
  		elsif (a.fetch(i) == "l" || a.fetch(i) == "c") && a.fetch(i-1) == "x"
  			number = number - 20
  		elsif (a.fetch(i) == "d" || a.fetch(i) == "m") && a.fetch(i-1) == "c"
  			number = number - 200  			
  		end
  	end
  end 
  number
end

=begin
puts roman_to_integer("i")
puts roman_to_integer("iii")
puts roman_to_integer("iv")
puts roman_to_integer("v")
puts roman_to_integer("viii")
puts roman_to_integer("ix")
puts roman_to_integer("X")
puts roman_to_integer("XX")
puts roman_to_integer("XXIV")
puts roman_to_integer("CCXCIX")
puts roman_to_integer("MCMXCIX")
=end