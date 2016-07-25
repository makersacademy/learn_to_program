#!/usr/local/rvm/rubies/ruby-2.3.0/bin/ruby
def roman_numeral n
	#this function should take an int n and convert it to a new roman numeral
	nums = {'M'=>1000, 'D'=>500, 'C'=>100, 'L'=>50, 'X'=>10, 'V'=>5, 'I'=>1} #a hash of the building blocks for roman numerals
	
	answer = [] #initialize an empty array we'll push to later

	nums.each { |i,j| #iterate through nums hash (where i is key, j is value)
		q = n/j #where j is the value in nums
		r = n%j #get the remainder
		answer.push i*q #push the multiples of j to answer in numeral form (i)
		n = r #redefine n - what was pushed already for next iteration

	}
ans = answer.join("") #converting array to one string
ans = ans.sub(/VIIII/, "IX")#if ans has VIIII excahnge for IX 
ans = ans.sub(/IIII/, "IV")# if ans has III exchange for IV 
puts ans
end 

roman_numeral 6444 #test
roman_numeral 1719 #test


