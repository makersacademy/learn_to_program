#!/usr/bin/env ruby

I = 1 
one = 'I'
V = 5 
five = 'V'
X = 10
ten='X'
L = 50
fifty='L'
C = 100 
onehundred='C'
D = 500 
fivehundred='D'
M = 1000
onethousand='M'


def old_roman_numeral num
  	#num_array=[1000,500,100,50,10,5,1]
	#letter_array=['M','D','C','L','X','V','I']	
	numerals_hash={	'M'=>1000, 
			'D'=>500,
			'C'=>100,
			'L'=>50,
			'X'=>10,
			'V'=>5,			
			'I'=>1, }	

	numerals_hash.each do |letter,devisor|	
	
	puts n=num/devisor
	puts letter*n
	
	puts num%devisor
	end
	
end


#test case 1
old_roman_numeral 78
