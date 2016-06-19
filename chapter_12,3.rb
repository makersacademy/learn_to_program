#roman to integer

def roman_to_integer rom_num
	roman_hash = {"i" => 1,
				  "v" => 5,
				  "x" => 10,
				  "l" => 50,
				  "c" => 100,
				  "d" => 500,
				  "m" => 1000}
#we have to go through rom_num, see if it is a roman numeral
# if yes, we have to add all number together. 
# How do we see if it is a roman numeral? if one letter before is #smaller. 
# if not we just go over to the next letter. 
	sum = 0 
	before = 0 
	index = rom_num.length - 1 #to get the index starting from 0
	while index >=0
		#we have to get the number according to the letter
		number = rom_num[index].downcase  #.downcase to compare also number written in capital letters
		pairs = roman_hash[number]
		if !pairs 
			puts "This is not a valid roman numeral!"
			return
		end 

		if pairs > before
			before =pairs  #IV : 5-1  or -1 + 5 
		else
			pairs = pairs *= -1 
		end 
		sum = sum + pairs 
		index -=1
	end 
	sum
end 

puts (roman_to_integer("mdcxiv"))

