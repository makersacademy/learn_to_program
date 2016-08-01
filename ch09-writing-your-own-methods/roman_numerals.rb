def roman_numeral n
	#this function should take an int n and convert it to a new roman numeral
	nums = {'M'=>1000, 'CM'=>900, 'D'=>500, 'CD'=>400, 'C'=>100, 'XC'=>90, 'L'=>50, 'XL'=>40, 'X' => 10, 'IX' => 9, 'V' => 5, 'IV' => 4, 'I' => 1 } #a hash of the building blocks for roman numerals
	
	answer = [] #initialize an empty array we'll push to later

	nums.each { |i,j| #iterate through nums hash (where i is key, j is value)
		q = n/j #where j is the value in nums
		r = n%j #get the remainder
		answer.push i*q #push the multiples of j to answer in numeral form (i)
		n = r #redefine n - what was pushed already for next iteration

	}
ans = answer.join("") #converting array to one string
return ans
end 

roman_numeral 6444 #test
roman_numeral 999 #test


