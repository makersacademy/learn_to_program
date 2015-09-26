#!/usr/bin/env ruby

def roman_numeral num
  	str=''	
	numerals_hash={	'M'=>1000,
			'CM'=>900, 
			'D'=>500,
			'CD'=>400,
			'C'=>100,
			'XC'=>90,
			'L'=>50,
			'XL'=>40,
			'X'=>10,
			'IX'=>9,
			'V'=>5,
			'IV'=>4,			
			'I'=>1, }	

	numerals_hash.each do |letter,devisor|	
	n=num/devisor
	
	num=num%devisor
	str+=letter*n
	
	end
	return str
end

puts roman_numeral 29

puts roman_numeral 489

