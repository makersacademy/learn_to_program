#!/usr/bin/env ruby


def old_roman_numeral num
  	str=''	
	numerals_hash={	'M'=>1000, 
			'D'=>500,
			'C'=>100,
			'L'=>50,
			'X'=>10,
			'V'=>5,			
			'I'=>1, }	

	numerals_hash.each do |letter,devisor|	
	n=num/devisor
	num=num%devisor
	str+=letter*n
	
	end
	return str
end


#test case 1
puts old_roman_numeral 985
