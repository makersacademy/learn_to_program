#!/usr/bin/env ruby

def roman_to_integer roman
	
	number=0
	split_anycase=roman.split(//)
	split=split_anycase.map(&:upcase)#allow upper and lower case numerals 
	is_roman_numeral(split)
	number = read_roman(split)
  	return number

end

def read_roman(array)
	number=0
	numerals_hash={	'CM'=>900, 
			'CD'=>400,
			'XC'=>90,
			'XL'=>40,
			'IX'=>9,
			'IV'=>4,
			'M'=>1000,			
			'D'=>500,			
			'C'=>100,			
			'L'=>50,			
			'X'=>10,			
			'V'=>5,						
			'I'=>1, }	

	len=array.length-1
	i=0
	rev_array=array.reverse
	letter_array=Array.new
	while i < array.length

	numerals_hash.each do |letter,devisor|
		if i==len
			rev_array.push(" ")
		end	
		if letter == (rev_array[i+1]+rev_array[i])
			letter_array.push(letter)
			i=i+2
			break
		elsif letter == rev_array[i]
			letter_array.push(letter)
			i=i+1
			break
		end
	end
	end

	numerals_hash.each do |letter,devisor|
		letter_array.each{|let|
			if letter==let 
				number=number+devisor
			end
		}
	end
	
	return number
	
end



def is_roman_numeral split #check if all the characters are valid in roman numerals
    	flag=0
	allowed_array=['M', 'D', 'C' ,'L', 'X', 'V', 'I']

	split.each{|char| 
		allowed_array.each{|allow|
	
		if char==allow	
			flag=flag+1
			
		end
		}
		
		if flag==0
			puts char
			puts "Not a roman numeral"
			exit
		end	
		flag=0
		
	}
end



puts roman_to_integer('MMX') #Ham and eggs
puts roman_to_integer('MCdiv') #My dj name...

