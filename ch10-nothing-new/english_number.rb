
def english_number number

# We accept numbers from 0 to 100.

if number < 0
	return 'Please enter a number zero or greater.'
end

if number > 100
	return 'Please enter a number 100 or less.'
end

num_string = '' # This is the string we will return.

# "left" is how much of the number

# we still have left to write out.

# "write" is the part we are

# writing out right now.

# write and left... get it? :)

left = number

write = left/100 # How many hundreds left?

left = left - write*100 # Subtract off those hundreds.

if write > 0
	return 'one hundred'
end

write = left/10 # How many tens left?

left = left - write*10 # Subtract off those tens.

if write > 0

if write == 1 # Uh-oh...

# Since we can't write "tenty-two"

# instead of "twelve", we have to

# make a special exception for these.

if left == 0
	num_string = num_string + 'ten'
elsif left == 1
	num_string = num_string + 'eleven'
elsif left == 2
	num_string = num_string + 'twelve'
elsif left == 3
	num_string = num_string + 'thirteen'
elsif left == 4
	num_string = num_string + 'fourteen'
elsif left == 5
	num_string = num_string + 'fifteen'
elsif left == 6
	num_string = num_string + 'sixteen'
elsif left == 7
	num_string = num_string + 'seventeen'
elsif left == 8

num_string = num_string + 'eighteen'

elsif left == 9

num_string = num_string + 'nineteen'

end

# Since we took care of the digit in the

# ones place already, we have nothing left to write.

left = 0

elsif write == 2

num_string = num_string + 'twenty'

elsif write == 3

num_string = num_string + 'thirty'

elsif write == 4

num_string = num_string + 'forty'

elsif write == 5

num_string = num_string + 'fifty'

elsif write == 6

num_string = num_string + 'sixty'

elsif write == 7

num_string = num_string + 'seventy'

elsif write == 8

num_string = num_string + 'eighty'

elsif write == 9

num_string = num_string + 'ninety'

end

if left > 0

num_string = num_string + '-'

end

end

write = left # How many ones left to write out?

left = 0 # Subtract off those ones.

if write > 0

if write == 1

num_string = num_string + 'one'

elsif write == 2

num_string = num_string + 'two'



elsif write == 3

num_string = num_string + 'three'

elsif write == 4

num_string = num_string + 'four'

elsif write == 5

num_string = num_string + 'five'

elsif write == 6

num_string = num_string + 'six'

elsif write == 7

num_string = num_string + 'seven'

elsif write == 8

num_string = num_string + 'eight'

elsif write == 9

num_string = num_string + 'nine'

end

end

if num_string == ''

# The only way "num_string" could be empty

# is if "number" is 0.

return 'zero'

end

# If we got this far, then we had a number

# somewhere in between 0 and 100, so we need

# to return "num_string".

num_string

end

puts english_number( 0)

puts english_number( 9)

puts english_number( 10)

puts english_number( 11)

puts english_number( 17)

puts english_number( 32)

puts english_number( 88)

puts english_number( 99)

puts english_number(100)