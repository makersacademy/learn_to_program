def roman_numeral num

  	newRoman = ''

  	newRoman << 'M' * (num / 1000)

  	hundredth  = num % 1000 / 100
  	tenth 	   = num % 100 / 10
  	oneth 	   = num % 10

  	if hundredth == 9
  		newRoman << 'CM'
  	elsif hundredth == 4
  		newRoman << 'CD'
  	else
  		newRoman << 'D' * (num % 1000 / 500)
  		newRoman << 'C' * (num % 500 / 100)
  	end

  	if tenth == 9
  		newRoman << 'XC'
  	elsif tenth == 4
  		newRoman << 'XL'
  	else
  		newRoman << 'L' * (num % 100 / 50)
  		newRoman << 'X' * (num % 50 / 10)
  	end

  	if oneth == 9
  		newRoman << 'IX'
  	elsif oneth == 4
  		newRoman << 'IV'
  	else
  		newRoman << 'V' * (num % 10 / 5)
  		newRoman << 'I' * (num % 5 / 1)
  	end

  	return newRoman
  	
    end

  puts roman_numeral 2015
