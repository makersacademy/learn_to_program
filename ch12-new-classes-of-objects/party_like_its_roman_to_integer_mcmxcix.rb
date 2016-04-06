def roman_to_integer roman
    
  rom_num = 	{'I' => 1,
                'V' => 5,
                'X' => 10,
                'L' => 50,
                'C' => 100,
                'D' => 500,
                'M' => 1000}



puts 'Input a Roman Numeral'
input_numeral = gets.chomp.upcase
no_of_chars = input_numeral.length
input_array = [ ]
counter1 = 0
while counter1 < no_of_chars
input_array.push input_numeral[counter1]
counter1 = counter1 + 1
end

counter2 = 0

input_array.each do |input_letter|

roman_numeral.each do |rom_letter,number| 

if input_letter.chr == rom_letter
counter2 = counter2 + 1
else
end

end

end 

if counter2 == input_array.length
status = 'valid'
else
status = 'invalid'
puts 'Error: Not all characters are valid roman numerals'
end

end

number_array = [ ]

input_array.each do |letter|
letter = letter.chr
number = roman_numeral[letter]
number_array.push number
end

counter3 = number_array.length - 1

number = number_array[counter3]
counter3 = counter3 - 1


while counter3 > -1

if number_array[counter3] < number_array[counter3+1]
number = number - number_array[counter3]
else
number = number + number_array[counter3]
end

counter3 = counter3 - 1

end

puts number 
end

