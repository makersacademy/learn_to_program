#!/usr/bin/env ruby

def roman_numeral num
  	str=''	
#	numerals_hash={	'M'=>1000, 
#			'D'=>500,
#			'C'=>100,
#			'L'=>50,
#			'X'=>10,
#			'V'=>5,			
#			'I'=>1, }	
	numerals_array=[['X',10],['V',5],['I',1]]

#	numerals_hash.each_with_index do |(letter,devisor),index|	
	numerals_array.each_with_index do |foo, index|
	letter=foo[0] 
	devisor=foo[1]	
	n=num/devisor
	puts n
	if n >3
		
		puts numerals_array[index-1][0]	
	elsif n>8
		puts numerals_array[index-2][0]
	end
	num=num%devisor
	str+=letter*n
	
	end
	return str
end

puts roman_numeral 29

