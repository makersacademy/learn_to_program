def english_number number
	if number < 0
		return "Please enter a non-negative number"
	end
	if number == 0
		return "Zero"
    end
    num_string = ""

    ones_place = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']

    tens_place = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']

    teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

      illions = [
              ['thousand', 3],
              ['million', 6],
              ['billion', 9],
              ['trillion', 12],
              ['quadrillion', 15],
              ['quintillion', 18],
              ['sextillion', 21],
              ['septillion', 24],
              ['octillion', 27],
              ['nonillion', 30],
              ['decillion', 33],
              ['undecillion', 36],
              ['duodecillion', 39],
              ['tredecillion', 42],
              ['quattuordecillion', 45],
              ['quindecillion', 48],
              ['sexdecillion', 51],
              ['septendecillion', 54],
              ['octodecillion', 57],
              ['novemdecillion', 60],
              ['vigintillion', 63],
              ['googol', 100]]

left = number

while illions.length > 0
	illionstoaction = illions.pop
	illionname = illionstoaction[0]
	illionbase = 10 ** illionstoaction[1]
	write = left / illionbase
	left = left - write * illionbase

	if write > 0
      prefix = english_number write
      num_string = num_string + prefix + ' ' + illionname

    if left > 0
       num_string = num_string + ' '
    end
    end
end

write = left/100 # How many hundreds left?

left = left - write*100 # Subtract off those hundreds.

if write > 0

# Now here's the recursion:

hundreds = english_number write

num_string = num_string + hundreds + ' hundred and'

if left > 0

# So we don't write 'two hundredfifty-one'...

num_string = num_string + ' '

end

end

    write = left/10 # How many tens left?

    left = left - write*10 # Subtract off those tens.

    if write > 0

    if ((write == 1) and (left > 0))

# Since we can't write "tenty-two" instead of

# "twelve", we have to make a special exception

# for these.
    num_string = num_string + teenagers[left-1]

# The "-1" is because teenagers[3] is

# 'fourteen', not 'thirteen'.

# Since we took care of the digit in the

# ones place already, we have nothing left to write.

    left = 0

    else

    num_string = num_string + tens_place[write-1]

# The "-1" is because tens_place[3] is

# 'forty', not 'thirty'.

    end

    if left > 0

# So we don't write 'sixtyfour'...

    num_string = num_string + '-'

    end

    end

    write = left # How many ones left to write out?

    left = 0 # Subtract off those ones.

    if write > 0

    num_string = num_string + ones_place[write-1]

    # The "-1" is because ones_place[3] is

    # 'four', not 'three'.

    end


    num_string.capitalize
end

def bottles(num)
until num == 0
puts "#{english_number(num)} bottles of beer on the wall!"
puts "#{english_number(num)} bottles of beer!"
puts "You take one down, pass it around,"
puts "#{english_number(num-1)} bottles of beer on the wall!"
num -= 1
end
end



