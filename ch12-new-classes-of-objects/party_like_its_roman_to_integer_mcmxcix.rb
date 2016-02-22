=begin
I = 1 V = 5 X = 10 L = 50

C = 100 D = 500 M = 1000
=end

def roman_to_integer roman
  # your code here
 if roman[/[IVXLCDM]+/i] != roman
	puts "This is not valid"
 end

roman_num = { 	"I" => 1,
				"V" => 5,
				"X" => 10, 
				"L" => 50,
				"C" => 100, 
				"D" => 500, 
				"M" => 1000 }

roman_arr = roman.upcase.split(//)
rom_length = roman_arr.length
index = rom_length-1
final_num = roman_num[roman_arr[index]]
index -=1
while index>=0
	letter = roman_arr[index]
	num = roman_num[letter]
	if num >= final_num || num==roman_num[roman_arr[index+1]]
		final_num += num
	elsif num < final_num
		final_num -= num
	end
	index -=1
end
final_num
end