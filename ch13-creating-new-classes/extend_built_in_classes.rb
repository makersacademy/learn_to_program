class Integer
def factorial
	n = self
	if n == 0
		1
	elsif n >= 1
		n* (n-1).factorial
	else 
	nil
	end	
end
def to_roman
	n = self
	#this function should take an int n and convert it to old school roman numeral
	nums = {'M'=>1000, 'D'=>500, 'C'=>100, 'L'=>50, 'X'=>10, 'V'=>5, 'I'=>1} #a hash of the building blocks for roman numerals
	
	answer = [] #initialize an empty array we'll push to later

	nums.each { |i,j| #iterate through nums hash (where i is key, j is value)
		q = n/j #where j is the value in nums
		r = n%j #get the remainder
		answer.push i*q #push the multiples of j to answer in numeral form (i)
		n = r #redefine n - what was pushed already for next iteration

	}
answer.join("") #converting array to one string
end 

end 

